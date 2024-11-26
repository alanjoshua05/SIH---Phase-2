from flask import Flask, request, jsonify, send_file
from pathlib import Path
import subprocess
import xml.etree.ElementTree as ET
from flask_cors import CORS
import shutil
import os

app = Flask(__name__)
CORS(app)

UPLOAD_FOLDER = Path('./uploads')
UPLOAD_FOLDER.mkdir(parents=True, exist_ok=True)

APKTOOL_PATH = '/opt/homebrew/bin/apktool'
BUILD_TOOLS_PATH = '/Users/alanjoshua/Library/Android/sdk/build-tools/34.0.0'

KEYSTORE_PATH = '/Users/alanjoshua/Library/Android/sdk/build-tools/34.0.0/my-release-key.jks'
KEY_ALIAS = 'my-key-alias'
KEYSTORE_PASSWORD = 'alan#2005'
KEY_PASSWORD = 'alan#2005'

@app.route('/upload', methods=['POST'])
def upload_apk():
    print("Request received at /upload")

    if 'apkfile' not in request.files:
        print("Error: 'apkfile' key not in request.files")
        return jsonify({'error': 'No file part'}), 400

    file = request.files['apkfile']
    print("File received:", file.filename)

    if file.filename == '':
        print("Error: No selected file")
        return jsonify({'error': 'No selected file'}), 400

    if file and file.filename.endswith('.apk'):
        apk_path = UPLOAD_FOLDER / file.filename
        file.save(apk_path)

        decompiled_folder = UPLOAD_FOLDER / 'decompiled'

        if decompiled_folder.exists():
            shutil.rmtree(decompiled_folder)
        decompiled_folder.mkdir(parents=True, exist_ok=True)

        try:
            result = subprocess.run(
                [APKTOOL_PATH, 'd', str(apk_path), '-o', str(decompiled_folder), '-f'],
                check=True, capture_output=True, text=True
            )
            print("APKTool stdout:", result.stdout)
            print("APKTool stderr:", result.stderr)

            manifest_path = decompiled_folder / 'AndroidManifest.xml'
            if not manifest_path.exists():
                print(f"AndroidManifest.xml not found in {decompiled_folder}")
                return jsonify({'error': 'AndroidManifest.xml not found after decompilation'}), 500

            permissions = extract_permissions(manifest_path)
            print(f"Extracted permissions: {permissions}")

            return jsonify({'permissions': permissions}), 200

        except subprocess.CalledProcessError as e:
            print(f"Error during APK decompilation: {e.stderr}")
            return jsonify({'error': 'Error during APK decompilation', 'details': e.stderr}), 500

    return jsonify({'error': 'Invalid file type'}), 400

def extract_permissions(manifest_path):
    """Extract permissions from the AndroidManifest.xml"""
    try:
        tree = ET.parse(manifest_path)
        root = tree.getroot()

        ns = {'android': 'http://schemas.android.com/apk/res/android'}
        permissions = []
        
        for permission in root.findall('.//uses-permission', ns):
            perm_name = permission.get('{http://schemas.android.com/apk/res/android}name')
            if perm_name:
                permissions.append(perm_name.replace('android.permission.', ''))

        return permissions
    except ET.ParseError as e:
        print(f"Error parsing AndroidManifest.xml: {e}")
        return {'error': f"Error parsing AndroidManifest.xml: {str(e)}"}
    except Exception as e:
        print(f"Error extracting permissions: {e}")  
        return {'error': f"Error extracting permissions: {str(e)}"}

@app.route("/toggle", methods=['POST'])
def toggle():
    try:
        data = request.get_json()
        selected_permissions = data.get('selectedPermissions', [])
        print(f"Received selected permissions: {selected_permissions}")

        permission_mapping = {
            'Disable External Storage Access': 'android.permission.MANAGE_EXTERNAL_STORAGE',
            'Disable Camera Permissions': 'android.permission.CAMERA',
            'Disable Bluetooth Permissions': 'android.permission.BLUETOOTH',
            'Disable Location Permissions': 'android.permission.ACCESS_FINE_LOCATION',
            'Disable Network Permissions': 'android.permission.ACCESS_NETWORK_STATE',
            'Disable SMS Permissions': 'android.permission.SEND_SMS',
            'Disable Overlay Permissions': 'android.permission.SYSTEM_ALERT_WINDOW',
            'Disable Accessibility Features': 'android.permission.BIND_ACCESSIBILITY_SERVICE',
            'Disable Microphone Permissions': 'android.permission.RECORD_AUDIO',
        }

        android_permissions = [permission_mapping.get(perm) for perm in selected_permissions if permission_mapping.get(perm)]

        if not android_permissions:
            return jsonify({'error': 'No valid permissions selected or permissions are not mapped'}), 400

        decompiled_folder = UPLOAD_FOLDER / 'decompiled'
        manifest_path = decompiled_folder / 'AndroidManifest.xml'
        modified_apk_path = UPLOAD_FOLDER / 'modified_apk.apk'

        if add_permissions_to_manifest(manifest_path, android_permissions):
            print("Permissions added to manifest successfully")
        else:
            return jsonify({'error': 'Failed to add permissions to AndroidManifest.xml'}), 500

        try:
            result = subprocess.run(
                [APKTOOL_PATH, 'b', str(decompiled_folder), '-o', str(modified_apk_path)],
                check=True, capture_output=True, text=True
            )
            print("APKTool build stdout:", result.stdout)
            print("APKTool build stderr:", result.stderr)
        except subprocess.CalledProcessError as e:
            return jsonify({'error': 'Error during APK rebuilding', 'details': e.stderr}), 500

        zipalign_apk(modified_apk_path, modified_apk_path)

        signed_apk_path = modified_apk_path.with_name(f'signed_{modified_apk_path.name}')
        sign_apk(modified_apk_path, signed_apk_path)

        return jsonify({
            'status': 'success',
            'message': 'Permissions added, APK rebuilt, zipaligned, and signed successfully',
            'downloadLink': f'/download/{signed_apk_path.name}'
        }), 200

    except Exception as e:
        print(f"Error during toggle processing: {str(e)}")
        return jsonify({"status": "error", "message": "Failed to process request", "details": str(e)}), 500


def add_permissions_to_manifest(manifest_path, permissions):
    """Remove permissions from the AndroidManifest.xml"""
    try:
        android_ns = "http://schemas.android.com/apk/res/android"
        ET.register_namespace('android', android_ns)

        tree = ET.parse(manifest_path)
        root = tree.getroot()

        # Define namespace map
        ns = {'android': android_ns}

        # Remove each permission if it exists
        for perm in permissions:
            # Find the permission element in the manifest
            permission_element = root.find(f".//uses-permission[@{{{android_ns}}}name='{perm}']", ns)
            
            if permission_element is not None:
                # Remove the permission if it exists
                root.remove(permission_element)
                print(f"Removed permission: {perm}")
            else:
                print(f"Permission not found: {perm}")

        # Write the updated manifest back to file
        tree.write(manifest_path, encoding='utf-8', xml_declaration=True)
        return True

    except Exception as e:
        print(f"Error updating AndroidManifest.xml: {e}")
        return False


def zipalign_apk(input_apk, output_apk):
    """Run zipalign to align the APK."""
    zipalign_path = os.path.join(BUILD_TOOLS_PATH, 'zipalign')

    # Ensure output path is different from input path
    aligned_apk = output_apk.parent / ('aligned_' + output_apk.name)

    cmd = [zipalign_path, '-v', '4', str(input_apk), str(aligned_apk)]
    try:
        subprocess.run(cmd, check=True)
        print(f"APK successfully zipaligned to {aligned_apk}")

        # Replace the original output APK with the aligned one
        aligned_apk.rename(output_apk)
        print(f"Aligned APK moved to {output_apk}")

    except subprocess.CalledProcessError as e:
        print(f"Error during zipalign: {e}")
        raise e


def sign_apk(input_apk, output_apk):
    """Sign the APK using apksigner."""
    apksigner_path = os.path.join(BUILD_TOOLS_PATH, 'apksigner')

    # Ensure output path is different from input path
    signed_apk = output_apk.parent / ('signed_' + output_apk.name)

    cmd = [
        apksigner_path, 'sign', 
        '--ks', KEYSTORE_PATH, 
        '--ks-key-alias', KEY_ALIAS, 
        '--ks-pass', f'pass:{KEYSTORE_PASSWORD}', 
        '--key-pass', f'pass:{KEY_PASSWORD}', 
        '--out', str(signed_apk), 
        str(input_apk)
    ]
    try:
        subprocess.run(cmd, check=True)
        print(f"APK successfully signed: {signed_apk}")

        # Replace the original output APK with the signed one
        signed_apk.rename(output_apk)
        print(f"Signed APK moved to {output_apk}")

    except subprocess.CalledProcessError as e:
        print(f"Error during signing: {e}")
        raise e

@app.route('/download', methods=['GET'])
def download_signed_apk():
    """Serve the signed APK for download"""
    try:
        # Define the exact path to the APK
        file_path = Path('/Users/alanjoshua/College/SIH/uploads/signed_modified_apk.apk')
        if not file_path.exists():
            print(f"File not found: {file_path}")
            return jsonify({'error': 'File not found'}), 404

        # Serve the APK file
        print(f"Serving signed APK for download: {file_path}")
        return send_file(
            file_path,
            as_attachment=True,
            download_name='signed_apk.apk',  # Filename for the client
            mimetype='application/vnd.android.package-archive'  # APK MIME type
        )
    except Exception as e:
        print(f"Error during file download: {e}")
        return jsonify({'error': f"Failed to download file: {str(e)}"}), 500


if __name__ == '__main__':
    app.run(debug=True, port=4500)

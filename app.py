from flask import Flask, request, jsonify
import os
import subprocess
import xml.etree.ElementTree as ET

app = Flask(__name__)


UPLOAD_FOLDER = './uploads'
if not os.path.exists(UPLOAD_FOLDER):
    os.makedirs(UPLOAD_FOLDER)


APKTOOL_PATH = '/usr/local/bin/apktool' 

app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

@app.route('/upload', methods=['POST'])
def upload_apk():
    if 'apkfile' not in request.files:
        return jsonify({'error': 'No file part'}), 400
    
    file = request.files['apkfile']
    if file.filename == '':
        return jsonify({'error': 'No selected file'}), 400
    
    if file and file.filename.endswith('.apk'):
    
        apk_path = os.path.join(app.config['UPLOAD_FOLDER'], file.filename)
        file.save(apk_path)

        
        decompiled_folder = os.path.join(app.config['UPLOAD_FOLDER'], 'decompiled')
        if not os.path.exists(decompiled_folder):
            os.makedirs(decompiled_folder)
        
        try:
           
            result = subprocess.run([APKTOOL_PATH, 'd', apk_path, '-o', decompiled_folder, '-f'], check=True, capture_output=True, text=True)
            print("APKTool stdout:", result.stdout)  
            print("APKTool stderr:", result.stderr)  
            
            
            manifest_path = os.path.join(decompiled_folder, 'AndroidManifest.xml')
            permissions = extract_permissions(manifest_path)

            return jsonify({'permissions': permissions}), 200
        except subprocess.CalledProcessError as e:
            print(f"Error during APK decompiling: {e.stderr}")  
            return jsonify({'error': 'Error during APK decompiling', 'details': e.stderr}), 500
    else:
        return jsonify({'error': 'Invalid file type'}), 400


def extract_permissions(manifest_path):
    """Extract permissions from the AndroidManifest.xml"""
    try:
        tree = ET.parse(manifest_path)
        root = tree.getroot()

      
        ns = {'android': 'http://schemas.android.com/apk/res/android'}

        
        permissions = []
        for permission in root.findall('.//uses-permission'):
            perm_name = permission.get('{http://schemas.android.com/apk/res/android}name')
            if perm_name:
                permissions.append(perm_name.replace('android.permission.', ''))

        return permissions
    except Exception as e:
        print(f"Error extracting permissions: {e}")  
        return {'error': f"Error extracting permissions: {str(e)}"}


if __name__ == '__main__':
    app.run(debug=True)

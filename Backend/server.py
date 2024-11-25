import requests

url = 'http://127.0.0.1:5000/upload'
files = {'apkfile': open('/path/to/your/file.apk', 'rb')}
response = requests.post(url, files=files)
print(response.json())

import zipfile
import os

files_to_zip = ['netlify.toml', 'package.json']
dirs_to_zip = ['frontend', 'netlify']
output_zip = 'DEPLOY_READY.zip'

with zipfile.ZipFile(output_zip, 'w', zipfile.ZIP_DEFLATED) as zipf:
    for file in files_to_zip:
        if os.path.exists(file):
            zipf.write(file)
    for directory in dirs_to_zip:
        if os.path.exists(directory):
            for root, dirs, files in os.walk(directory):
                for file in files:
                    zipf.write(os.path.join(root, file))

print("Zip created successfully!")

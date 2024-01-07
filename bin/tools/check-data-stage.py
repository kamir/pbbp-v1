import os
import re

bot_base_dir = os.environ.get('BOT_BASE_DIR')

# Paths to the folders
image_folder = bot_base_dir + '/data-stage/raw-data-temp/ocr-uploads'
json_folder = bot_base_dir + '/data-stage/raw-data-stage/ocr-json-storage'

# Get lists of files in each folder
image_files = os.listdir(image_folder)
json_files = os.listdir(json_folder)

# Regex pattern to match the PXL pattern
pattern = r'PXL_\d{8}_\d{9}'

# Extract the common identifiers from the file names
image_ids = set([re.search(pattern, file).group() for file in image_files])
json_ids = set([re.search(pattern, file).group() for file in json_files])

#print( image_ids )
#print( json_ids )

# Find matches and mismatches
matches = image_ids.intersection(json_ids)
mismatched_images = image_ids - json_ids
mismatched_jsons = json_ids - image_ids

# Report the results
status_report = {
    'total_images': len(image_files),
    'total_jsons': len(json_files),
    'matches': len(matches),
    'mismatched_images': len(mismatched_images),
    'mismatched_jsons': len(mismatched_jsons),
    'mismatched_image_files': [file for file in image_files if file.split('.')[0] in mismatched_images],
    'mismatched_json_files': [file for file in json_files if file.split('_')[-1].split('.')[0] in mismatched_jsons]
}

for key, value in status_report.items():
    print(f"{key}: {value}")

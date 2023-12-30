import os
import json

def filter_json_files_by_refined_status(folder, status='done'):
    refined_files = []
    for file in os.listdir(folder):
        if file.endswith('.json'):
            with open(os.path.join(folder, file), 'r') as json_file:
                try:
                    data = json.load(json_file)
                    # Check if the 'refined' field exists and is not equal to the specified status
                    if 'refined' in data and data['refined'] != status:
                        refined_files.append(file)
                except json.JSONDecodeError:
                    print(f"Error reading {file}: Invalid JSON.")
    return refined_files


bot_base_dir = os.environ.get('BOT_BASE_DIR')

# Paths to the folders
json_folder = bot_base_dir + '/data-stage/raw-data-stage/ocr-json-storage'

non_refined_json_files = filter_json_files_by_refined_status(json_folder, 'done')
print("> JSON files where 'refined' is not 'done':")
for file in non_refined_json_files:
    new_file_name = file.rsplit('.json', 1)[0]
    print( "http://127.0.0.1:8080/edit/" + new_file_name)


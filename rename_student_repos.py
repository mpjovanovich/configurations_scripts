import sys
import os
from pathlib import Path

# Usage: python rename_student_repos.py usernames.txt ./assignment_name/


def rename_directories(mapping_file, target_dir):
    # Convert target_dir to absolute path
    target_dir = os.path.abspath(target_dir)

    if not os.path.isdir(target_dir):
        print("Error: Target directory not found")
        return

    try:
        with open(mapping_file, 'r') as f:
            for line in f:
                if line.strip() == '':
                    continue

                old_name, new_name = line.strip().split(maxsplit=1)

                # Loop through all immediate directories in target_dir
                found = False
                for dirname in os.listdir(target_dir):
                    dir_path = Path(target_dir) / dirname
                    if dir_path.is_dir() and old_name in dirname:
                        # Replace old_name with new_name in the directory name
                        new_dirname = dirname.replace(old_name, new_name)
                        new_path = Path(target_dir) / new_dirname
                        dir_path.rename(new_path)
                        print(f"Renamed: {new_name}")
                        found = True
                        break

                if not found:
                    print(f"Not found: {old_name}")

    except FileNotFoundError:
        print("Error: Mapping file not found")
    except ValueError:
        print("Error: Invalid format in mapping file")


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print(
            "Usage: python rename_directories.py <mapping_file> <target_directory>"
        )
        sys.exit(1)

    rename_directories(sys.argv[1], sys.argv[2])

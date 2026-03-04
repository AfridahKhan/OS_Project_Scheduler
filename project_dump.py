import os

PROJECT_PATH = "/Documents/OS_Project_Scheduler"   # CHANGE THIS
OUTPUT_FILE = "mcertikos_dump.txt"

# Directories to skip
SKIP_DIRS = {'.git', '__pycache__', 'build', 'bin'}

# File extensions to include (edit if needed)
ALLOWED_EXTENSIONS = {
    '.c', '.h', '.S', '.txt', '.md', '.py', '.Makefile'
}

def is_binary(file_path):
    try:
        with open(file_path, 'rb') as f:
            chunk = f.read(1024)
            if b'\0' in chunk:
                return True
    except:
        return True
    return False


with open(OUTPUT_FILE, 'w', encoding='utf-8') as outfile:

    for root, dirs, files in os.walk(PROJECT_PATH):

        # Remove skipped directories
        dirs[:] = [d for d in dirs if d not in SKIP_DIRS]

        for file in files:

            file_path = os.path.join(root, file)
            extension = os.path.splitext(file)[1]

            # Skip unwanted extensions
            if extension not in ALLOWED_EXTENSIONS:
                continue

            # Skip binary files
            if is_binary(file_path):
                continue

            try:
                with open(file_path, 'r', encoding='utf-8', errors='ignore') as infile:
                    outfile.write(f"\n\n{'='*80}\n")
                    outfile.write(f"FILE: {file_path}\n")
                    outfile.write(f"{'='*80}\n\n")
                    outfile.write(infile.read())

            except Exception as e:
                print(f"Skipping {file_path}: {e}")

print("Project successfully dumped.")
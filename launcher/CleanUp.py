import os
import shutil


def clean_dir(dir):
    for root, dirs, files in os.walk(dir):
        for f in files:
            os.unlink(os.path.join(root, f))
        for d in dirs:
            shutil.rmtree(os.path.join(root, d))


def cleanup(dir):
    for root, subdirectories, files in os.walk(dir):
        for subdirectory in subdirectories:
            if "4TestCov" in subdirectory:
                shutil.rmtree(os.path.join(root, subdirectory))
        for file in files:
            if "number.txt" in file:
                os.remove(os.path.join(root, file))

if __name__ == "__main__":
    cleanup("sandbox")
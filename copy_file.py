from base64 import decode
import glob
from re import sub
import subprocess
from tqdm import tqdm

source_directory = "dbfs:/FileStore/xxxxxxx"
target_directory = "./data/"

file_list = subprocess.run([f"dbfs ls {source_directory}"], shell=True, stdout = subprocess.PIPE, stderr = subprocess.PIPE)
file_list = file_list.stdout.decode("utf-8").split("\n")
for file_name in tqdm(file_list):
    try:
        subprocess.check_output(f"dbfs cp {source_directory}{file_name} {target_directory}", shell=True)
    except :
        pass
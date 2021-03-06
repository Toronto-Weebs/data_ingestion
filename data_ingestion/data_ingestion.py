import os
import sys
import ffmpeg
from dotenv import load_dotenv
from pathlib import Path
import s3fs


KEY, SECRET, VIDEO_FORMAT, OUTPUT_DIR = sys.argv[0], sys.argv[1], sys.argv[2], sys.argv[3]
## get list of mp4 files (local)
def extract_videos_local(path = './'):
    list = []
    for i in os.listdir(path):
        if i.endswith(video_format):
            list.append(i)
    return(list)

## get list of mp4 files (s3)
def extract_videos_s3(s3path = 's3://'):
    fs = s3fs.S3FileSystem(key=KEY,
                           secret=SECRET)
    list = []
    for i in fs.ls(s3path):
        if i.endswith(VIDEO_FORMAT):
            list.append(i)
    return(list)

# write each file_path into .txt file where each line contains one file_path
with open(txt_file_path, 'w') as f:
    for item in file_paths:
        f.write("%s\n" % item)
        

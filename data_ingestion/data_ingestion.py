import numpy as np
import pandas as pd
from dotenv import load_dotenv
from pathlib import Path
import s3fs
import os

## get list of mp4 files (local)
def extract_videos_local(path = './'):
    list = []
    for i in os.listdir(path):
        if i.endswith(".mp4"):
            list.append(i)
    return(list)

## get list of mp4 files (s3)
def extract_videos_s3(s3path = 's3://'):
    fs = s3fs.S3FileSystem(key='AKIAWS6WCPETLOBWFPZK',
                           secret='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')
    list = []
    for i in fs.ls(s3path):
        if i.endswith(".mp4"):
            list.append(i)
    return(list)
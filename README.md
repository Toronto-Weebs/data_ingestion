# Overview

Data Ingestion is specifically designed to curate datasets for GAN training. 
The pipeline is designed to input video format and output dataset of images

# Quickstart

Please ensure you have both GNU Make and Docker installed on your machine.

To build container image:

```make build```

To run container image:

```make run```

To update `requirements.txt` through `poetry`:

```make update```

# Steps

1. Convert video 
2. Extract iFrames from a video to a directory of images
3. Filter images with facial features through `mediapipe`

## Pipeline

**Extract list of files**

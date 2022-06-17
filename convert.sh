# Take inputs of a directory from stdin 
INPUT_DIR=$1
OUTPUT_DIR=$2

ffmpeg -i sample.mp4 -vf "select='eq(pict_type,I)'" -vsync vfr out-%02d.jpeg

for video in INPUT_DIR/*; do
    mkdir -p "$OUTPUT_IDR/$video" # create a directory for each video
    VIDEO_DIR="$OUTPUT_IDR/$video" # set the directory to the video
    ffmpeg -i $video -vf "select='eq(pict_type,I)'" -vsync vfr "$videVIDEO_DIR/out-%02d.jpeg" # extract the IDR frames
done

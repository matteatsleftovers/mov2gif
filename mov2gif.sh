#!/bin/bash
file="$1"

# Requires ffmpeg installed: https://ffmpeg.org
# Inspired by this superuser post: https://superuser.com/questions/436056/how-can-i-get-ffmpeg-to-convert-a-mov-to-a-gif
# Instructed by this StackOverflow post: https://stackoverflow.com/questions/13351806/file-name-manipulation-with-shell-scripts-changing-file-extensions
mov2gif()
{
  filename=$(basename "$file")
  filename=${filename%.*}
  ffmpeg -i $file -pix_fmt rgb8 -r 10 $filename.gif
}

mov2gif $1
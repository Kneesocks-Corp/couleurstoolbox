ffmpeg -i %1 -c:v libx264 -vf "scale=-2:'min(ih/2,720):flags=neighbor" -tune fastdecode -preset veryfast -g 60 -x264-params bframes=0 -crf 18 -forced-idr 1 -strict -2 -maxrate 100M -bufsize 10M -c:a copy "%~dpn1 (proxy).mp4"
pause
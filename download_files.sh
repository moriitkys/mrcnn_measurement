!/bin/sh
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1rrKQBYAzL9TwhA3B7sgVlmE0XPD2Ji8f" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1rrKQBYAzL9TwhA3B7sgVlmE0XPD2Ji8f" -o "./scripts/files/mymodel.h5"

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1jDSxzqlHILCcwQGtHmI43A78a8lG1hSb" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1jDSxzqlHILCcwQGtHmI43A78a8lG1hSb" -o "./rosbag/snappeas1_sample.bag"

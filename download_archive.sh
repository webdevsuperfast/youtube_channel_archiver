#!/bin/sh
# Create a file if youtube-dl-playlists.txt doesnt exist
if [ ! -f youtube-dl-playlists.txt ]; then
  touch youtube-dl-playlists.txt
fi

# Get input from user
echo Enter video URL
read videourl

# Check if videourl is already in the file
if grep -R "$videourl" youtube-dl-playlists.txt; then
  echo "Video already in file"
else
  echo "$videourl" >> youtube-dl-playlists.txt
fi

# Execute command
yt-dlp --config-location youtube-dl.conf
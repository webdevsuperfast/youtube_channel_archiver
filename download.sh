#!/bin/bash
# Create a file if youtube-dl-playlists.txt doesnt exist
CWD=$(pwd)

if [ ! -f youtube-dl-playlists.txt ]; then
  touch youtube-dl-playlists.txt
fi

# Get input from user
echo Enter URL
read videourl

# Check if videourl is already in the file
if grep -R "$videourl" youtube-dl-playlists.txt; then
  echo "Video already in file"
else
  echo "$videourl" >> youtube-dl-playlists.txt
fi

# Execute command
# yt-dlp --config-location youtube-dl.conf

prompt="Choose an option:"
formats=("video" "audio" "playlist" "audio-playlist")

PS3="$prompt "

# formats=($formats)

select format in "${formats[@]}"; do
  case $format in
    "video")
      echo "Downloading video"
      yt-dlp --config-location $CWD/config/video.conf
      exit 1
      ;;
    "audio")
      echo "Downloading audio"
      yt-dlp --config-location $CWD/config/audio.conf
      exit 1
      ;;
    "playlist")
      echo "Downloading video playlist"
      yt-dlp --config-location $CWD/config/video-playlist.conf
      exit 1
      ;;
    "audio-playlist")
      echo "Downloading audio playlist"
      yt-dlp --config-location $CWD/config/audio-playlist.conf
      exit 1
      ;;
    *)
      echo "Invalid option"
      exit 1
      ;;  
  esac
done
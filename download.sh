#!/bin/bash
# Create a file if youtube-dl-playlists.txt doesnt exist
CWD=$(pwd)

if [ ! -f youtube-dl-playlists.txt ]; then
  touch youtube-dl-playlists.txt
fi

# Get input from user
prompt="Choose what to do: "
PS3="$prompt "

options=("url" "continue")
select option in "${options[@]}"; do
  case $option in 
    "url")
      echo "Enter URL"
      read videourl
      break 1
      ;;
    "continue")
      echo "Continue downloading"
      videourl=$(tail -n 1 youtube-dl-playlists.txt)
      break 1
      ;;
    *)
      echo "No options selected."
      continue 1
      ;;
  esac
done

# Check if videourl is already in the file
if grep -R "$videourl" youtube-dl-playlists.txt; then
  echo "Video already in file"
else
  echo "$videourl" >> youtube-dl-playlists.txt
fi

# Execute command
prompt="Choose an option:"
formats=("video" "audio" "playlist" "audio-playlist")

PS3="$prompt "

# Select format
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
      continue 1
      ;;  
  esac
done
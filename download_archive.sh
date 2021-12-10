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
# yt-dlp --config-location youtube-dl.conf

echo Choose an option:

formats=("video" "audio" "playlist" "audio-playlist")
echo $PS3
select format in "${formats[@]}"; do
  case $format in
    "video")
      echo "Downloading video"
      yt-dlp --config-location video.conf
      exit 1
      ;;
    "audio")
      echo "Downloading audio"
      yt-dlp --config-location audio.conf
      exit 1
      ;;
    "playlist")
      echo "Downloading video playlist"
      yt-dlp --config-location playlist.conf
      exit 1
      ;;
    "audio-playlist")
      echo "Downloading audio playlist"
      yt-dlp --config-location audio-playlist.conf
      exit 1
      ;;
    *)
      echo "Invalid option"
      exit 1
      ;;  
  esac
done
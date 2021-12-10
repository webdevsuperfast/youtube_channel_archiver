#!/bin/sh
echo Enter video URL
read videourl

echo "$videourl" >> youtube-dl-playlists.txt

yt-dlp --config-location youtube-dl.conf

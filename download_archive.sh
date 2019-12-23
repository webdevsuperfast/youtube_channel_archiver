#!/bin/sh
echo Enter video URL
read videourl
youtube-dl $videourl --config-location youtube-dl.conf

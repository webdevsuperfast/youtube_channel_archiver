@echo off
set /p url="Enter video URL "
youtube-dl %url% --config-location youtube-dl.conf
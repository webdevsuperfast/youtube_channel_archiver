# YouTube-DL Playlist Archiver

This is a forked version of [YouTube Channel Archiver](https://github.com/dmn001/youtube_channel_archiver) based on [Stephen304](https://www.reddit.com/user/Stephen304) post on [Data Hoarder](https://www.reddit.com/r/DataHoarder/comments/858ny5/my_youtubedl_config_downloading_entire_channels/) subreddit. Edited the `youtube-dl.conf` to focus on playlists instead of channels and added configuration for quality/format and commented configuration that I don't need.

## Usage

1. Create `youtube-dl-playlists.txt` file and add your playlist URLs.
2. Save File.
3. Run `./download_archive.sh` if you're on MacOS/Linux/WSL, `./download_archive.bat` if you're on Windows.

Note: Empty file `youtube-dl-archive.txt` is used to store downloaded ids. For Linux/MacOS, you might need to fix the `download_archive.sh` permission first by `chmod +x download_archive.sh`.

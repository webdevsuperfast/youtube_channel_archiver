# YouTube Playlist Archiver

This is a forked version of [YouTube Channel Archiver](https://github.com/dmn001/youtube_channel_archiver) based on [Stephen304](https://www.reddit.com/user/Stephen304) post on [Data Hoarder](https://www.reddit.com/r/DataHoarder/comments/858ny5/my_youtubedl_config_downloading_entire_channels/) subreddit. Edited the `youtube-dl.conf` to focus on playlists instead of channels and added configuration for quality/format and commented configuration that I don't need.

## Usage

1. Download or clone repository.
2. Navigate to extracted or cloned repository, e.g. `cd ~/youtube-playlist-archiver`.
2. Create `youtube-dl-playlists.txt` file and list or input playlist URLs, e.g. `echo 'https://www.youtube.com/playlist?list=PLvahqwMqN4M0UXgBYznO18lSYjzRj-gT-' >> youtube-dl-playlists.txt`.
3. Run `./download_archive.sh` if you're on MacOS/Linux/WSL, `./download_archive.bat` if you're on Windows via CLI.

**Note:** Empty file `youtube-dl-archive.txt` is used to store downloaded YouTube ids. For Linux/MacOS, you might need to fix the `download_archive.sh` permission first by running `chmod +x download_archive.sh` via CLI.

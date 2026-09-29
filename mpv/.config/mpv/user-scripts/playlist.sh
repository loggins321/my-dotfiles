#!/bin/bash

mpv --no-video --msg-level=ao=no --term-playing-msg=$'
\e[1;4;36m----NOW PLAYING----\e[0m\n
\e[0;35mArtist  : \e[0;32m${metadata/by-key/Artist}
\e[0;35mTitle   : \e[0;32m${media-title}
\e[0;35mAlbum   : \e[0;32m${metadata/by-key/Album}
\e[0;35mDate    : \e[0;32m${metadata/by-key/Date}
\e[0;35mYoutube : \e[0;32m${metadata/by-key/Uploader}' --display-tags-clr --term-status-msg=$'
--\e[1;37m${time-pos} \e[1;34m/\e[0m \e[1;37m${duration}\e[0m--' "$@"
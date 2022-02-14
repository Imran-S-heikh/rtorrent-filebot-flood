#!/bin/sh
echo "hello world"
# Input Parameters
# ARG_PATH="$1"
# ARG_NAME="$2"
# ARG_LABEL="$3"


# Configuration
CONFIG_OUTPUT="/home/imran/rtorrent/plex"

# filebot -script fn:amc --output "$CONFIG_OUTPUT" --action move --conflict skip -non-strict --def unsorted=y music=y artwork=n excludeList=".excludes" ut_dir="$ARG_PATH" ut_kind="multi" ut_title="$ARG_NAME" ut_label="$ARG_LABEL" --def movieFormat="Movies/{y}/{plex.tail}" seriesFormat="TVShows/{y}/{plex.tail}" animeFormat="Anime/{y}/{order.airdate.plex.tail}" animeDB="AniDB"
filebot -r --log-file /home/imran/rtorrent/log.txt /home/imran/rtorrent/download -script fn:amc --output "$CONFIG_OUTPUT" --action duplicate --conflict skip -non-strict --def unsorted=y music=y artwork=n excludeList=".excludes"  ut_kind="multi" --def movieFormat="Movies/{y}/{plex.tail}" seriesFormat="TVShows/{y}/{plex.tail}" animeFormat="Anime/{y}/{order.airdate.plex.tail}" animeDB="AniDB"
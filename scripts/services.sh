#!/bin/bash

echo whoami
echo "Starting The services"
cp -nr /tmp/config/* /config
rtorrent -n -o import=/config/rtorrent.rc

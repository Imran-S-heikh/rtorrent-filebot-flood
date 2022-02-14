#!/bin/bash

echo "Chaiging the permissions"
echo "User: $USER_NAME:$USER_ID"
echo "User: $GROUP_NAME:$GROUP_ID"
chown -R $USER_NAME:$GROUP_NAME /config /rtorrent
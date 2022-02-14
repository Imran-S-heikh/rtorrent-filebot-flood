#!/bin/bash

echo "Init Script"
bash /scripts/permission.sh
/bin/su -s /bin/bash -c "/scripts/services.sh" $USER_NAME
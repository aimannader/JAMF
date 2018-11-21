#!/bin/sh
# Written by Heiko Horn 2018.05.15
# This script hides a user account from the users and groups preference pane in system preferences

if [ -z "${4}" ]; then
	userAccount="_support"
fi
dscl . create /Users/$userAccount IsHidden 1
exit 0

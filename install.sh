#!/usr/bin/env bash

set -e

SERVICE_PATH=$HOME/Library/LaunchAgents/local.fb.mac.messenger.monitor.plist
here="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Install monitor script"
cp -f $here/fb-mac-messenger-monitor.sh /usr/local/bin/
chmod +x /usr/local/bin/fb-mac-messenger-monitor.sh

echo "Install launchd service"
launchctl unload $SERVICE_PATH
cp -f $here/local.fb.mac.messenger.monitor.plist $SERVICE_PATH
launchctl load $SERVICE_PATH

echo "Done"

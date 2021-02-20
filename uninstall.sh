#!/usr/bin/env bash

SERVICE_PATH=$HOME/Library/LaunchAgents/local.fb.mac.messenger.monitor.plist

echo "Uninstall monitor script"
rm -f /usr/local/bin/fb-mac-messenger-monitor.sh

echo "Uninstall launchd service"
launchctl unload $SERVICE_PATH
launchctl remove $SERVICE_PATH
rm -f $SERVICE_PATH

echo "Done"

#!/usr/bin/env bash

set -e

here="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cp -f $here/fb-mac-messenger-monitor.sh /usr/local/bin/
chmod +x /usr/local/bin/fb-mac-messenger-monitor.sh
cp -f $here/local.fb.mac.messenger.monitor.plist $HOME/Library/LaunchAgents/
launchctl load $HOME/Library/LaunchAgents/local.fb.mac.messenger.monitor.plist

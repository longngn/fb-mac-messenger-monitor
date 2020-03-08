# RAM monitor for [fb-mac-messenger](https://fbmacmessenger.rsms.me/)

## Overview

Memory leak has been a known issue of FB's Messenger: https://github.com/rsms/fb-mac-messenger/issues/396

This runs a script as launchd service to monitor and restart Messenger.app if its memory exceed limit (default to 500MB)

## Installation

```bash
./install.sh
```

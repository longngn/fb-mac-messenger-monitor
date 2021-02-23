#!/usr/bin/env bash

APP_PATH=/Applications/Messenger.app
RAM_LIMIT_MB=1024

ram_usage=$(ps aux | grep $APP_PATH | grep -v grep | awk '{ print $6 }' | paste -sd+ - | bc)
if [ $ram_usage -ge $((RAM_LIMIT_MB*1024)) ]; then
  pid=$(ps aux | grep $APP_PATH | grep -v grep | awk '{ print $2 }')
  kill $pid
  open $APP_PATH
fi

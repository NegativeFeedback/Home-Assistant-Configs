#!/bin/bash

cd "/home/zbayne/.homeassistant"
git fetch
commits="$(git rev-list --count master..origin/master)"
echo "$commits"

#curl -X POST -H "x-ha-access: $1" -H "Content-Type: application/json" http://127.0.0.1:8123/api/states/sensor.new_commits -d "{\"state\": \"$commits\"}"
curl -X POST -H "x-ha-access: $1" -H "Content-Type: application/json" https://jarvis.gddnet.io:8123/api/states/sensor.new_commits?api_password=tucker22 -d "{\"state\": \"$commits\"}" -k

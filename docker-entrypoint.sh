#!/bin/bash

I="\e[1;32m::\e[00m"

# echo -e "$I Setup / db:setup, db:migrate"
# bundle exec rails db:setup

echo -e "$I Starting Rails Server..."
rm -f /app/tmp/pids/server.pid
bundle exec rails server -b '0.0.0.0'


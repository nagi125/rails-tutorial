#!/bin/bash

I="\e[1;32m::\e[00m"

until mysqladmin ping -h db --silent; do
    echo -e "$I waiting for mysqld to be connectable..."
    sleep 3
done

echo -e "$I Setup / db:schema:load"
bundle exec rails db:schema:load

echo -e "$I Starting Rails Server..."
rm -f /app/tmp/pids/server.pid
bundle exec rails server -b '0.0.0.0'

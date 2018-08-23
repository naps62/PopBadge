#!/bin/sh

set -e

bundle exec rake db:migrate

rm -rf /app/tmp/pids/server.pid

bundle exec rails server

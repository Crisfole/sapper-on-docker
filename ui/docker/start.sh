#! /bin/bash

# Wait for MySQL
until nc -z -v -w30 db 5432
do
  echo "Waiting for Postgres..."
  sleep 1
done

echo "Postgres is up and running"

# Run Setup
bin/setup

# Delete the pidfile and start rails
npm run $RUN_ENV

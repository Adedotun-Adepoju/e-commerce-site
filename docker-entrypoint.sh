#!/bin/sh

set -e 

# Wait for the database to be ready
until pg_isready -h database -p 5432 -U ${POSTGRES_USER} -q
do
  echo "Waiting for database to be ready..."
  sleep 2
done

# Run the database migrations and seed the database
rails db:create 
rails db:migrate 

# Start the Rails server
exec "$@"
rails server -b 0.0.0.0
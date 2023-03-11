#!/bin/sh

set -e 

echo "ENVIRONMENT: $RAILS_ENV"

bundle install
rails server
#!/bin/sh

set -e 

echo "ENVIRONMENT: $RAILS_ENV"

rails server -b 0.0.0.0
#!/bin/bash

# Wait for MySQL to be ready
echo "Waiting for MySQL to be ready..."
wait-for-it.sh mysql:3306 --timeout=60 --strict -- echo "MySQL is up!"

# Run migrations
echo "Running migrations..."
php artisan migrate --force

# Start Apache in the foreground
echo "Starting Apache..."
apache2-foreground

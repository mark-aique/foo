#!/bin/bash

# Wait for mysql to be ready
sleep 10

# Run migrations
echo "Running migrations..."
php artisan migrate

# Start Apache in the foreground
echo "Starting Apache..."
apache2-foreground

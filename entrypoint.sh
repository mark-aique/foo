#!/bin/bash

# Run migrations
echo "Running migrations..."
php artisan migrate

# Start Apache in the foreground
echo "Starting Apache..."
apache2-foreground

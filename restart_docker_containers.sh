#!/bin/bash

BASE_DIR="/Users/media/SynologyDrive/Projects/barf"

for service_dir in dozzle duplicati immich linuxservarr plex; do
    echo "Processing $service_dir..."
    
    cd "$BASE_DIR/$service_dir" || continue
    
    echo "Stopping $service_dir containers..."
    docker compose down -v
    
    # Wait for containers to fully stop
    while docker compose ps --quiet | grep -q .; do
        echo "Waiting for $service_dir containers to stop..."
        sleep 5
    done
    
    echo "Starting $service_dir containers..."
    docker compose up -d
    
    # Wait for containers to be healthy/running
    while true; do
        if docker compose ps | grep -q "unhealthy\|starting\|restarting"; then
            echo "Waiting for $service_dir containers to be healthy..."
            sleep 5
        else
            # Check if containers are actually running
            if docker compose ps --quiet | grep -q .; then
                break
            fi
        fi
    done
    
    echo "$service_dir successfully restarted"
    echo "-----------------------------------"
    sleep 2
done

echo "All services have been restarted"

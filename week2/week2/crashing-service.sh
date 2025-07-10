#!/bin/bash

# This script randomly crashes the service.
# It simulates a failure at random intervals.

while true; do
    # Sleep for a random number of seconds between 1 and 10
    sleep $((RANDOM % 10 + 1))
    
    # Randomly decide whether to crash the service
    if (( RANDOM % 2 )); then
        echo "Crashing the service..."
        exit 1  # Simulate a crash
    fi
done
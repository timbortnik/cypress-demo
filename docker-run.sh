#!/bin/bash

docker run -itv "$(pwd)/test-results:/app/test-results" --network="host" cypress-oos 

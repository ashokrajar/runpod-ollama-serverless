#!/bin/bash

ollama serve &
sleep 5

ollama pull $1

python3 -u runpod_serverless.py
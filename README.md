# Ollama in RunPod Serverless

This repo contains all the helper code required to run your Ollama Service in `RunPod GPU as a Serverless service`.

## Testing Locally

### Pre Requisite

* Ollama Running Locally
* Python >= 3.8

Note : Update `prompt` in `test_input.json` if you need to test with diff input to the model.

```shell
python runpod_serverless.py
```

## Building & Pushing Image

```shell
make all
```

## How to Run this in RunPod

https://youtu.be/2AdgBh3YgBU
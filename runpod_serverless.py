#! /usr/bin/env python
import runpod
import requests


def handler(job):
    base_url = "http://localhost:11434"
    payload = job["input"]["payload"]

    # Override and disable streaming reponse.
    # Note : Streaming is not supported in serverless mode
    payload["stream"] = False

    resp = requests.post(
        url=f"{base_url}/api/{job['input']['method_name']}/",
        headers={"Content-Type": "application/json"},
        json=payload,
    )
    resp.encoding = "utf-8"

    return resp.json()


runpod.serverless.start({"handler": handler})

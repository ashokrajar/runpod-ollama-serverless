FROM ollama/ollama:0.2.1

ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update --yes --quiet && \
    DEBIAN_FRONTEND=noninteractive apt-get install --yes --quiet pip \
    && rm -rf /var/lib/apt/lists/*
    
# Install application dependencies
ADD requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir

# copy wrapper script & code
ADD runpod_serverless.py .
ADD start-ollama-serverless.sh .

# Override Ollama's entrypoint
ENTRYPOINT ["/bin/bash", "/app/start-ollama-serverless.sh"]

CMD ["llama3:latest"]
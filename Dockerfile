FROM python:3.12-slim
RUN apt-get update && apt-get install -y --no-install-recommends curl git bash ca-certificates && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash
ENV PATH="/root/.local/bin:${PATH}"
CMD ["sh", "-c", "hermes dashboard --host 0.0.0.0 --port ${PORT:-10000} --no-open"]

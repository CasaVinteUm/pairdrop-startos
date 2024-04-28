FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    openssl \
    libssl-dev \
    libc6-dev \
    clang \
    libclang-dev \
    ca-certificates \
    curl \
    cargo \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

COPY docker.sh /tmp/docker.sh
RUN bash /tmp/docker.sh
RUN rm /tmp/docker.sh
FROM jetbrains/teamcity-agent:latest

USER root
RUN apt update && apt install -y \
    dnsutils \
    iputils-ping \
    python3 \
    python3-pip \
 && rm -rf /var/lib/apt/lists/*
RUN pip3 install docker-compose
USER 1000

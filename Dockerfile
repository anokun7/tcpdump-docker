FROM ubuntu:bionic
RUN apt update && apt install tcpdump -y && rm -rf /var/lib/apt/lists/*
VOLUME /var/tmp
ENTRYPOINT ["tcpdump"]
CMD ["-i", "any", "-C", "1000", "-nn", "-w", "/var/tmp/tcpdump-", "-XX", "-v", "-U", "-W", "100"]

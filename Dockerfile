FROM ubuntu:bionic
RUN apt update && apt install tcpdump -y
VOLUME /var/tmp
ENTRYPOINT tcpdump
CMD ["-i", "any", "-C", "1000", "-nn", "-w", "/var/tmp", "-XX", "-v", "-U", "-W", "100"]

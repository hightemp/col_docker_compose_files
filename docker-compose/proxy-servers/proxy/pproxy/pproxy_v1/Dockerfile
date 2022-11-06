FROM debian:latest

RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install --no-cache-dir pproxy pycryptodome asyncssh aioquic pvpn

COPY ./start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
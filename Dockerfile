FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -q=2 && \
    apt-get install -q=2 --no-install-recommends git \
	ca-certificates

COPY cst-3.3.1.tgz /home
RUN cd /home; tar xvf cst-3.3.1.tgz
RUN cd /home; git clone https://github.com/foundriesio/lmp-tools.git

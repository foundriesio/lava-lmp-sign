FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -q=2 && \
    apt-get install -q=2 --no-install-recommends git \
	ca-certificates \
	imx-code-signing-tool

RUN cd /home; git clone https://github.com/foundriesio/lmp-tools.git

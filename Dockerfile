FROM debian:buster-slim

RUN apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install \
		iputils-ping \
		net-tools \
		vim \
		git \
		nmap \
		ncat \
		dnsutils \
		tcpdump \
		telnet \
		curl \
		wget \
		iperf \
		iproute2 

COPY files/root/.bashrc /root/.bashrc

WORKDIR /root
		

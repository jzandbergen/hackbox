FROM debian:bookworm-slim

RUN apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install \
        bash-completion \
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
        iproute2 \
        socat \
        postgresql-client \
        shelldap \
        pgformatter && \
    curl -LO https://github.com/nats-io/natscli/releases/download/v0.4.0/nats-0.4.0-amd64.deb && \
    dpkg -i nats-0.4.0-amd64.deb && \
    rm -f nats-0.4.0-amd64.deb && \
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && \
    ~/.fzf/install && \
    curl https://mise.run | sh

ENV PATH=/root/.local/bin:${PATH}
    
COPY files/root/.bashrc /root/.bashrc
COPY files/root/.vimrc /root/.vimrc

RUN vim +PluginInstall +qall && \
    apt-get clean && \
    echo "set bg=dark" >> /root/.vimrc 

WORKDIR /root
		

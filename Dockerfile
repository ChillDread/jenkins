FROM jenkins/jenkins:lts
USER root
RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y python3 python-pip python3-pip make build-essential libssl-dev zlib1g-dev && \
    apt-get install -y libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm && \
    apt-get install -y libncurses5-dev  libncursesw5-dev xz-utils tk-dev && \
    wget https://www.python.org/ftp/python/3.6.4/Python-3.6.9.tgz && \
    tar xvf Python-3.6.9.tgz && \
    cd Python-3.6.9 && \
    ./configure --enable-optimizations && \
    make -j8 && \
    make altinstall && \ && \
    cd .. && \
    wget https://www.python.org/ftp/python/3.6.4/Python-3.7.6.tgz && \
    tar xvf Python-3.7.6.tgz && \
    cd Python-3.7.6 && \
    ./configure --enable-optimizations && \
    make -j8 && \
    make altinstall && \
    apt-get update && \
    pip3 install pipenv


FROM jenkins/jenkins:lts
USER root
RUN apt-get update && \
    apt-get install -y python3 python-pip python3-pip && \
    pip3 install pipenv

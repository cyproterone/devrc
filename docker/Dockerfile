FROM ubuntu:latest


ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y \
    git python3 python3-pip nodejs npm && \
    pip3 install ansible


COPY . /root/.config/devrc
WORKDIR /root/.config/devrc
RUN ansible-playbook localhost.ansible.yml

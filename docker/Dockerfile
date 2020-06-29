FROM ubuntu:latest


RUN apt update && \
    apt install -y \
    python3 python3-pip && \
    pip3 install ansible


COPY . /root/.config/devrc
WORKDIR /root/.config/devrc
RUN ansible-playbook localhost.ansible.yml

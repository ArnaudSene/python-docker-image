FROM python:latest
ENV container docker

RUN apt-get update -qq
RUN apt-get install -qq -y vim
RUN python -m pip install --upgrade pip
RUN mkdir /root/.ssh
RUN mkdir /root/.pip
COPY config/pypirc /root/.pypirc
COPY config/pip.conf /root/.pip/pip.conf
COPY config/ssh/docker* root/.ssh/
RUN chmod 700 /root/.ssh
RUN echo "eval \$(ssh-agent -s)" >> /root/.bashrc
RUN echo "ssh-add ~/.ssh/docker-gitlab-sassy-id_ed25519" >> /root/.bashrc

# Add gitlab host to known_hosts
RUN ssh-keyscan gitlab.com > ~/.ssh/known_hosts

ENTRYPOINT /bin/bash

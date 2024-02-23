FROM jenkins/jenkins:2.426.3

ARG http_proxy_var

USER root

RUN export http_proxy=$http_proxy_var \
 && export https_proxy=$http_proxy_var \
 && apt update -y \
 && apt install openssl git \
 && apt upgrade \
 && yum install curl -y \
 rm -rf /var/lib/apt/lists/*

FROM ubuntu:18.04

RUN sed -i -e 's#archive.ubuntu.com/ubuntu/#ftp.riken.go.jp/Linux/ubuntu/#g' /etc/apt/sources.list && \
  sed -i -e 's#security.ubuntu.com/ubuntu/#ftp.riken.go.jp/Linux/ubuntu/#g' /etc/apt/sources.list && \
  apt update && \
  apt install -y sudo curl && \
  rm -rf /var/lib/apt/lists/* && \
  useradd -s /bin/bash -m ubuntu && \
  gpasswd -a ubuntu sudo && \
  echo "ubuntu ALL=NOPASSWD: ALL" >> /etc/sudoers

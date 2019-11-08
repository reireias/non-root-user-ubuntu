FROM ubuntu:18.04

RUN sed -i -e 's#archive.ubuntu.com/ubuntu/#ftp.riken.go.jp/Linux/ubuntu/#g' /etc/apt/sources.list && \
  sed -i -e 's#security.ubuntu.com/ubuntu/#ftp.riken.go.jp/Linux/ubuntu/#g' /etc/apt/sources.list && \
  apt update && \
  apt install -y sudo curl make git vim locales python3 python3-pip python3-apt ruby && \
  rm -rf /var/lib/apt/lists/* && \
  pip3 install ansible && \
  useradd -s /bin/bash -m ubuntu && \
  gpasswd -a ubuntu sudo && \
  echo "ubuntu ALL=NOPASSWD: ALL" >> /etc/sudoers && \
  locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

FROM ghcr.io/linuxserver/baseimage-ubuntu:jammy
RUN \
  echo "**** install runtime dependencies ****" && \
  apt-get update && \
  apt-get install -y \
    git \
    jq \
    libatomic1 \
    nano \
    net-tools \
    netcat \
    yum \
    sudo && \
  echo "root:Ww12345!" | chpasswd && \
  echo "root ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
  echo "**** install completed ****"
  
EXPOSE 22
EXPOSE 3306
EXPOSE 80

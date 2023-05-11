FROM redhat/ubi8
RUN \
  echo "**** install runtime dependencies ****" && \
  apt-get update && \
  apt-get install -y \
    git \
    net-tools \
    netcat \
    yum \
    sudo && \
  echo "root:Ww12345" | chpasswd && \
  echo "root ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
  echo "**** install completed ****" && \
  
EXPOSE 8443

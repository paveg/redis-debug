FROM ubuntu:16.04
ARG REDIS_VERSION=4.0.11

WORKDIR /root
RUN apt-get update && \
  apt-get install -y \
  sudo build-essential gdb cgdb gdbserver wget curl vim less

RUN wget https://github.com/antirez/redis/archive/${REDIS_VERSION}.tar.gz && \
  tar zxf ${REDIS_VERSION}.tar.gz && \
  cd redis-${REDIS_VERSION}/src && \
  make noopt

WORKDIR /root/redis-${REDIS_VERSION}/src
CMD ["/bin/bash"]

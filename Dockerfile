FROM ubuntu:latest
LABEL maintainer="trib0r3@criptext.com"

ARG DEBIAN_FRONTEND=noninteractive
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# install deps & misc tools
RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3-pip git gdb gdbserver wget tmux vim zsh -y

# install re packages
WORKDIR /root/
RUN pip3 install keystone-engine unicorn capstone ropper
RUN pip3 install frida-tools
RUN echo "set disassembly-flavor intel" > .gdbinit
RUN wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh

# expose ports & exec
EXPOSE 4444
EXPOSE 8888

ENTRYPOINT ["zsh"]
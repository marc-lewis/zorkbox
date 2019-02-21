FROM ubuntu:bionic

RUN apt-get update
RUN apt-get install curl unzip frotz -y

WORKDIR /home/zork1/

RUN curl http://www.infocom-if.org/downloads/zork1.zip -o zork1.zip
RUN unzip zork1.zip
RUN rm zork1.zip

# frotz will not run as root - set up a user
# (n)ameless (a)dventurer https://en.wikipedia.org/wiki/Zork#Setting
RUN adduser --shell /bin/bash --no-create-home --gecos '' --disabled-password na
# Allow saves in the zork1 directory
RUN chown -R na:na /home/zork1

WORKDIR /home/zork1/local_saves

USER na

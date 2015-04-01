FROM ubuntu:latest
MAINTAINER Vali Malinoiu <0x4139@gmail.com>

#install java 8
RUN mkdir /opt/jre
COPY jre-7u76-linux-x64.gz /tmp/
RUN tar -zxf /tmp/jre-7u76-linux-x64.gz -C /opt/jre
RUN update-alternatives --install /usr/bin/java java /opt/jre/jre1.7.0_76/bin/java 100

#cleanup
RUN rm -rf /tmp/*

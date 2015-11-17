FROM debian:jessie

RUN apt-get -y install apt-utils
RUN apt-get update && apt-get clean
RUN apt-get -y install apt-utils vim texlive-full

RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen; locale-gen

CMD /bin/bash


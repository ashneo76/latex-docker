FROM debian:jessie

RUN apt-get update && apt-get clean
RUN apt-get -y install vim texlive-full

# Install international fonts
RUN apt-get -y install xfonts-intl-* xfonts-cyrillic xfonts-thai fonts-arphic-* fonts-indic fonts-baekmuk fonts-thai-tlwg fonts-takao-*
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen; locale-gen

CMD /bin/bash


FROM alpine:3.12

RUN apk add --update bash

RUN wget https://github.com/StevenBlack/ghosts/releases/download/v0.2.2/ghosts_0.2.2_Linux_x86_64.tar.gz \
  && mkdir /tmp/ghosts \
  && tar zxvf ghosts_0.2.2_Linux_x86_64.tar.gz -C /tmp/ghosts \
  && mv /tmp/ghosts/ghosts /usr/local/bin/ghosts \
  && chmod +x /usr/local/bin/ghosts \
  && rm ghosts_0.2.2_Linux_x86_64.tar.gz \
  && rm -fr /tmp/ghosts

ENTRYPOINT ["/usr/local/bin/ghosts"]

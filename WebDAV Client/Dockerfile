FROM ubuntu:16.04
MAINTAINER laosu<wbsu2003@gmail.com>

RUN apt-get update \
  && apt-get install -y davfs2 \
  && mkdir -p /mnt/webdrive \
  && apt-get clean \
  && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

VOLUME /mnt/webdrive

COPY ./start.sh /usr/local/bin
RUN chmod +x /usr/local/bin/start.sh

# Add Tini
ENV TINI_VERSION v0.19.0
# ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
ADD https://hub.fastgit.org/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]

# Run your program under Tini
CMD [ "/usr/local/bin/start.sh" ]

FROM python:2.7

ENV DEBIAN_FRONTEND noninteractive
ENV VERSION 1.4.4

RUN apt-get update && apt-get install -y \
  git --no-install-recommends

RUN git clone https://github.com/sqlmapproject/sqlmap.git \
    && cd sqlmap \
    && git checkout tags/${VERSION}

WORKDIR /sqlmap
VOLUME /data

CMD ["—h"]
ENTRYPOINT ["./sqlmap.py"]

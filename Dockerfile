FROM anapsix/alpine-java:8_jdk

ARG ANO=2019
ARG VERSAO=1.0

ENV TZ=America/Sao_Paulo
ENV DISPLAY=:0

RUN apk update && apk add --no-cache \
    tzdata \
    wget \
    libxext \
    libxrender \
    libxtst \
    libxi

WORKDIR /tmp

COPY startup.sh .

RUN apk del \
    bash \
    gzip

CMD ["./startup.sh"]

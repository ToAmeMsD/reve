FROM alpine:3.15.0

ENV TZ="Asia/Shanghai"

ADD reve /root/reve/reve

ADD sgerrand.rsa.pub /etc/apk/keys/sgerrand.rsa.pub
RUN ["apk","add","--no-cache","wget"]
RUN ["wget","https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.34-r0/glibc-2.34-r0.apk"]
RUN ["apk","add","--no-cache","glibc-2.34-r0.apk"]
RUN ["apk","del","wget"]
RUN apk update \
    && apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone

RUN chmod +x /root/reve/reve
# RUN chmod +x /root/reve/run.sh
# CMD /root/reve/run.sh
EXPOSE 5212

ENTRYPOINT["/root/reve/reve"]
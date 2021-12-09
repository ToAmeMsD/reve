#FROM alpine:3.15.0
#ADD cloudreve /root/cloudreve/cloudreve
#ADD mycloudreve.ini /root/cloudreve/mycloudreve.ini
#ADD cloudreve.db /root/cloudreve/cloudreve.db
#ADD run.sh /root/cloudreve/run.sh
#ADD sgerrand.rsa.pub /etc/apk/keys/sgerrand.rsa.pub
##ADD glibc.apk /root/glibc.apk
#RUN ["apk","add","--no-cache","wget"]
#RUN ["wget","https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.34-r0/glibc-2.34-r0.apk"]
#RUN ["apk","add","--no-cache","glibc-2.34-r0.apk"]
#RUN ["apk","del","wget"]
#RUN chmod +x /root/cloudreve/cloudreve
#RUN chmod +x /root/cloudreve/run.sh
#CMD /root/cloudreve/run.sh

#FROM alpine:3.15.0
#ADD cloudreve /root/cloudreve/cloudreve
#ADD mycloudreve.ini /root/cloudreve/mycloudreve.ini
##ADD cloudreve.db /root/cloudreve/cloudreve.db
#ADD run.sh /root/cloudreve/run.sh
#ADD sgerrand.rsa.pub /etc/apk/keys/sgerrand.rsa.pub
##ADD glibc.apk /root/glibc.apk
#RUN ["apk","add","--no-cache","wget"]
#RUN ["wget","https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.34-r0/glibc-2.34-r0.apk"]
#RUN ["apk","add","--no-cache","glibc-2.34-r0.apk"]
#RUN ["apk","del","wget"]
#RUN chmod +x /root/cloudreve/cloudreve
#RUN chmod +x /root/cloudreve/run.sh
#CMD /root/cloudreve/run.sh

FROM alpine:3.15.0
ADD cloudreve /root/cloudreve/cloudreve
ADD mycloudreve.ini /root/cloudreve/mycloudreve.ini
#ADD cloudreve.db /root/cloudreve/cloudreve.db
ADD run.sh /root/cloudreve/run.sh
ADD sgerrand.rsa.pub /etc/apk/keys/sgerrand.rsa.pub
RUN ["apk","add","--no-cache","wget"]
RUN ["wget","https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.34-r0/glibc-2.34-r0.apk"]
RUN ["apk","add","--no-cache","glibc-2.34-r0.apk"]
RUN ["apk","del","wget"]
RUN chmod +x /root/cloudreve/cloudreve
RUN chmod +x /root/cloudreve/run.sh
CMD /root/cloudreve/run.sh
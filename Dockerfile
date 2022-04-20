FROM alpine:latest
RUN apk --no-cache update \
    && apk --no-cache add sudo
copy run.sh /usr/local/
RUN addgroup -S jenkins && adduser -S jenkins -G jenkins
RUN chown -R jenkins:jenkins /home/cassandra/
RUN echo 'jenkins  ALL=(ALL) /bin/su' >>  /etc/sudoers
USER jenkins
ENTRYPOINT [ "sh","/usr/local/run.sh"]


FROM jenkins/jenkins:latest
USER root
RUN curl -sSL https://get.docker.com/  | sh
USER jenkins

FROM java:8-jdk
MAINTAINER wagnerdocri@gmail.com

WORKDIR /opt/karaf
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

ENV KARAF_VERSION=4.2.7
ENV KARAF_DOWNLOADED_FILENAME=apache-karaf-$KARAF_VERSION.tar.gz
ENV KARAF_DOWNLOAD_URL=https://www-eu.apache.org/dist/karaf/$KARAF_VERSION/apache-karaf-$KARAF_VERSION.tar.gz

ADD ./scripts /scripts

RUN wget --output-document $KARAF_DOWNLOADED_FILENAME $KARAF_DOWNLOAD_URL

RUN tar --strip-components=1 -C /opt/karaf -xzf apache-karaf-$KARAF_VERSION.tar.gz
RUN rm apache-karaf-$KARAF_VERSION.tar.gz

EXPOSE 8101 1099 4444

COPY ./container_config_folder/etc $KARAF_HOME/etc
 
ENTRYPOINT ["/scripts/entrypoint.sh"]

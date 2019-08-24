FROM wagnermarques/fzl_java-oracle8-f27:0.0.1

MAINTAINER wagnerdocri@gmail.com

#ENV http_proxy=http://cid2:cid2@192.168.0.2:3128/
#ENV ftp_proxy=http://cid2:cid2@192.168.0.2:3128/
#ENV all_proxy=http://cid2:cid2@192.168.0.2:3128/
#ENV use_proxy=yes
ENV KARAF_VERSION=4.2.6
ENV KARAF_DOWNLOADED_FILENAME=apache-karaf-$KARAF_VERSION.tar.gz
ENV KARAF_DOWNLOAD_URL=https://www-eu.apache.org/dist/karaf/4.2.6/apache-karaf-$KARAF_VERSION.tar.gz

ADD ./scripts /scripts

#needed just if you are behind a proxy
#if wagnermarques/fzl_java-oracle8-f27:0.0.1 image was created with .wgetrc proxy, it needs to be cleared manually
#with RUN echo "" > /container_config_folder/.wgetrc
#RUN cp /container_config_folder/.wgetrc  ~/
#RUN cat /container_config_folder/.wgetrc

RUN wget --output-document /$KARAF_DOWNLOADED_FILENAME $KARAF_DOWNLOAD_URL

RUN dnf clean all

RUN tar xvzf apache-karaf-$KARAF_VERSION.tar.gz
RUN rm apache-karaf-$KARAF_VERSION.tar.gz
RUN mv apache-karaf-$KARAF_VERSION /opt
ENV KARAF_HOME=/opt/apache-karaf-$KARAF_VERSION
ENV PATH=:$PATH:$KARAF_HOME/bin

EXPOSE 8101

ADD ./container_config_folder/etc $KARAF_HOME/etc
 
ENTRYPOINT ["/scripts/entrypoint.sh"]

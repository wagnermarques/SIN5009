FROM fedora:29

MAINTAINER wagnerdocri@gmail.com

ENV JDKFILE=jdk-8u131-linux-x64.tar.gz
ENV JAVA_HOME=/opt/jdk/jdk1.8.0_131

RUN dnf -y update
RUN dnf -y install tar wget  && dnf clean all

RUN mkdir -p /opt/jdk
RUN wget --output-document /opt/jdk/$JDKFILE --no-cookies --no-check-certificate \
         --header "Cookie:s_nr=1484102101551; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/$JDKFILE" 
	
                                                                                        
RUN cd /opt/jdk && tar xvf $JDKFILE 

RUN alternatives --install /usr/bin/java   java     $JAVA_HOME/bin/java 2000000
RUN alternatives --install /usr/bin/javaws javaws   $JAVA_HOME/bin/javaws 2000000
RUN alternatives --install /usr/bin/javac  javac    $JAVA_HOME/bin/javac 2000000
RUN alternatives --install /usr/bin/jar    jar      $JAVA_HOME/bin/jar 2000000
RUN alternatives --set java $JAVA_HOME/bin/java
RUN alternatives --set javaws $JAVA_HOME/bin/javaws
RUN alternatives --set javac $JAVA_HOME/bin/javac
RUN alternatives --set jar $JAVA_HOME/bin/jar

CMD ["bash"]

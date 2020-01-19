#/bin/bash

source ./karafcli.sh

#docker exec -it karaf ls /container_config_folder/etcbk/org.ops4j.pax.url.mvn.cfg
#https://support.sonatype.com/hc/en-us/articles/360041287334
#https://cwiki.apache.org/confluence/display/KARAF/6.6.+Installing+additional+features
docker exec -it karaf cp /container_config_folder/etcbk/org.ops4j.pax.url.mvn.cfg /opt/karaf/etc
docker exec -it karaf cp /container_config_folder/etcbk/org.apache.karaf.features.repos.cfg /opt/karaf/etc/org.apache.karaf.features.repos.cfg
docker exec -it karaf cp /container_config_folder/etcbk/sin5009.properties /opt/karaf/etc/

docker stop karaf
docker start karaf

echo "wait karaf container restart...."
sleep 10


$karafcli feature:repo-add camel
$karafcli feature:install camel camel-core camel-blueprint camel-stream camel-mail

#DEPLOYS

#$karafcli "feature:install camel-blueprint camel-stream"

#$karafcli "feature:install http"
#$karafcli "feature:install webconsole"
#$karafcli "feature:list | grep console"

#INSTALLING CAMEL
#$karafcli "feature:install deployer camel-blueprint aries-blueprint"
#$karafcli "feature:list | grep (camel-blueprint |  aries-blueprint) "

#camel                                   | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-core                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-websocket                         | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-spring                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-blueprint                         | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-atom                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-bam                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-cmis                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-cometd                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-csv                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-cxf                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-gae                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-geocoder                          | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-github                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-google-calendar                   | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-google-drive                      | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-google-mail                       | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-spark-rest                        | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-splunk                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-spring-batch                      | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-spring-integration                | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-spring-javaconfig                 | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-spring-ldap                       | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-spring-redis                      | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-spring-security                   | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-spring-ws                         | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-stream                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-stomp                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-string-template                   | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-swagger                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-syslog                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-tagsoup                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-twitter                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-univocity-parsers                 | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-urlrewrite                        | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-vertx                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-velocity                          | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-weather                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-zipfile                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-zookeeper                         | 2.15.2           |          | Uninstalled | camel-2.15.2                      |



#camel-catalog                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-ahc                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-ahc-ws                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-amqp                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-apns                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-atmosphere-websocket              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-avro                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-aws                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-base64                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-bean-validator                    | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-beanio                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-beanstalk                         | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-barcode                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-bindy                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-box                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-cache                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-cassandraql                       | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-castor                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-chunk                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |


#camel-context                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-couchdb                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-crypto                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-disruptor                         | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-dns                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-dozer                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-dropbox                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-elasticsearch                     | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-eventadmin                        | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-exec                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-facebook                          | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-flatpack                          | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-fop                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-freemarker                        | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-ftp                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-ganglia                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |


#camel-gson                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-guava-eventbus                    | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-guice                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-hawtdb                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-hazelcast                         | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-hbase                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-hdfs                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-hdfs2                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-hipchat                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-http4                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-ibatis                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-ical                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-infinispan                        | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-irc                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jackson                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jasypt                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-jclouds                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jcr                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-jgroups                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jibx                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jing                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-josql                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |


#camel-jsch                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jsonpath                          | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jt400                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-juel                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jxpath                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-kestrel                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-krati                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-linkedin                          | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-leveldb                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-lucene                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-metrics                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-mina                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-mina2                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-mongodb                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-mqtt                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-msv                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-mustache                          | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-mvel                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-mybatis                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-nagios                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-netty                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-netty-http                        | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-netty4                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-netty4-http                       | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-ognl                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-olingo2                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-openshift                         | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-optaplanner                       | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-paxlogging                        | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-pgevent                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-printer                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-protobuf                          | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-quickfix                          | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-rabbitmq                          | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-restlet                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-rmi                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-routebox                          | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-rss                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-rx                                | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-sap-netweaver                     | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-salesforce                        | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-saxon                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-scala                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-schematron                        | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-scr                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-script-jruby                      | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-script-javascript                 | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-script-groovy                     | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-script                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-servlet                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-servletlistener                   | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-shiro                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-sip                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-sjms                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-ruby                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-groovy                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-hl7                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-http                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jaxb                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jdbc                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jetty                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jetty9                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jms                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jmx                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-jpa                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-kafka                             | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-ldap                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-quartz                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-quartz2                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-smpp                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-snmp                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-soap                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-solr                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-sql                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-ssh                               | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-stax                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-test                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-test-spring                       | 2.15.2           |          | Uninstalled | camel-2.15.2                      |

#camel-xmlbeans                          | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-xmljson                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-xmlrpc                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-xmlsecurity                       | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-xmpp                              | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-xstream                           | 2.15.2           |          | Uninstalled | camel-2.15.2                      |
#camel-yammer                            | 2.15.2           |          | Uninstalled | camel-2.15.2                      |




       
#docker exec $CONTAINER_NAME $KARAF_HOME/bin/client -r 7 \
#        "feature:install camel; \
#        feature:install camel-stream; \
#        feature:install pax-jdbc-config; \
#        feature:install pax-jdbc; \
#        feature:install pax-jdbc-spec; \
#        feature:install pax-jdbc-postgresql; \
#        feature:install pax-jdbc-mariadb; \
#        feature:install webconsole"




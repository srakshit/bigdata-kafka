#!/bin/bash

#set kafka server properties
sed -i -e "s|^zookeeper.connect=.*$|zookeeper.connect=$ZK_CONNECT_STRING|" $KAFKA_HOME/config/server.properties
sed -i -e "s|^#delete.topic.enable=.*$|delete.topic.enable=true|" $KAFKA_HOME/config/server.properties
sed -i -e "s|^broker.id=.*$|broker.id=-1|" $KAFKA_HOME/config/server.properties

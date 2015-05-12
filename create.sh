#!/bin/bash

#Download neo4j
wget -O neo4j.tar.gz 'http://neo4j.com/artifact.php?name=neo4j-enterprise-2.2.1-unix.tar.gz'

#Unpack
tar -xzf neo4j.tar.gz

#Create directory
mv neo4j-enterprise-2.2.1 neo4j-cluster-1

#Copy
cp -r neo4j-cluster-1 neo4j-cluster-2
cp -r neo4j-cluster-1 neo4j-cluster-3
cp -r neo4j-cluster-1 neo4j-cluster-arbiter

#Delete archive
rm neo4j.tar.gz

#Copy configuration
cp neo4j-1/* neo4j-cluster-1/conf
cp neo4j-2/* neo4j-cluster-2/conf
cp neo4j-3/* neo4j-cluster-3/conf
cp neo4j-arbiter/* neo4j-cluster-arbiter/conf

#Start Neo4j
./neo4j-cluster-1/bin/neo4j start
./neo4j-cluster-2/bin/neo4j start
./neo4j-cluster-3/bin/neo4j start
./neo4j-cluster-arbiter/bin/neo4j-arbiter start
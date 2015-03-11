#!/bin/bash

NEO4J_1_PATH=~/neo4j-ha/neo4j-1
NEO4J_2_PATH=~/neo4j-ha/neo4j-2
NEO4J_3_PATH=~/neo4j-ha/neo4j-3
NEO4J_A_PATH=~/neo4j-ha/neo4j-arbiter

cp -r neo4j-1/. ${NEO4J_1_PATH}/conf/
cp -r neo4j-2/. ${NEO4J_2_PATH}/conf/
cp -r neo4j-3/. ${NEO4J_3_PATH}/conf/
cp -r neo4j-arbiter/. ${NEO4J_A_PATH}/conf/

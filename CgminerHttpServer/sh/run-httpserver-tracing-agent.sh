#!/bin/bash

#
# Move to the directory containing this script so we can source the env.sh
# properties that follow
#
cd `dirname $0`

#
# Common properties shared by scripts
#
. env.sh

CGMINERHOST=49er
CGMINERPORT=4028
HTTPPORT=8000

exec_cmd "java -agentlib:native-image-agent=config-merge-dir=src/main/resources/META-INF/native-image/$MAINCLASS -classpath $CLASSPATH $MAINCLASS -cgminerHost:$CGMINERHOST -cgminerPort:$CGMINERPORT -httpPort:$HTTPPORT"


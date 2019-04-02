#!/bin/sh
NAMESPACE=default
DEPLOYMENT=tomcat-8480
REGISTRY=10.246.103.111/dev/tomcat-dev
FILE=tomcat.yaml
BUILD_NUMBER=1
STATUS=$(kubectl get deployment -n $NAMESPACE |grep $DEPLOYMENT |wc -l)

if [  $STATUS -eq 0 ];then
   kubectl create -f $FILE
   else
   kubectl set image deployment/$DEPLOYMENT $DEPLOYMENT=$REGISTRY:v$BUILD_NUMBER --namespace=$NAMESPACE
fi

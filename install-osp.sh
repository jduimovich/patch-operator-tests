#!/bin/bash

read -r -d '' OSP <<'OSP'
apiVersion: operators.coreos.com/v1alpha1
kind: Subscription
metadata:
  name: openshift-pipelines
  namespace: openshift-operators
spec:
  channel: stable
  name: openshift-pipelines-operator-rh
  source: redhat-operators
  sourceNamespace: openshift-marketplace
OSP
echo "$OSP"
echo "$OSP" | oc apply -f -  

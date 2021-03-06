#!/usr/bin/env bash

export OCI_USER=`cat ~/.oci/config | grep user | awk '{split($0,array,"=")} END{print array[2]}'`
export OCI_TENANCY=`cat ~/.oci/config | grep tenancy | awk '{split($0,array,"=")} END{print array[2]}'`
export OCI_REGION=`cat ~/.oci/config | grep region | awk '{split($0,array,"=")} END{print array[2]}'`
export OCI_FINGERPRINT=`cat ~/.oci/config | grep fingerprint | awk '{split($0,array,"=")} END{print array[2]}'`
export OCI_PRIVATE_KEY_BASE64=`cat $(cat ~/.oci/config | grep key_file | awk '{split($0,array,"=")} END{print array[2]}') | base64`
##export OCI_PRIVATE_KEY_PASS=${OCI_PRIVATE_KEY_PASS:-""}
export OCI_PRIVATE_KEY_PASS=`cat ~/.oci/config | grep pass_phrase | awk '{split($0,array,"=")} END{print array[2]}'`
export ALERTS_TOPIC_ID="<your TOPIC OCID>"

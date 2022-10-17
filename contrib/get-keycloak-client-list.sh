#!/bin/bash

# Script to retrieve current list of defined clients from Keycloak
# Very easy when you need to make a vanilla client definition template ninja file.
# Author   Date     Comments
# J. Baten 20220704 Initial version
# J. Baten 20220818 Cleanup and rename
# J. Baten 20221017 Reworked and added to public repo

serverurl="keycloakserver.tld"
adminid="admin"
adminpw="my-secret-password"
myrealm="my-realm"

result=$( curl -k -vvvv \
  -d "realm=master" \
  -d "client_id=admin-cli" \
  -d "username=${adminid}" \
  -d "password=${adminpw}" \
  -d "grant_type=password" \
  "https://${serverurl}/realms/master/protocol/openid-connect/token" )

echo "Result"
echo $result

access_token=$( curl -k  \
  -d "realm=master" \
  -d "client_id=admin-cli" \
  -d "username=${adminid}" \
  -d "password=${adminpw}" \
  -d "grant_type=password" \
  "https://${serverurl}/realms/master/protocol/openid-connect/token" | jq --raw-output .access_token )

echo "Access token"
echo $access_token

url="admin/realms/${myrealm}/clients"


echo ================================================================================


curl -k -v -H "Accept: application/json" -H "Authorization: Bearer ${access_token}" "https://${serverurl}/$url" | jq .


echo ================================================================================



#!/bin/bash

API="http://localhost:4741"
URL_PATH="/businesses"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "business": {
      "name": "'"${NAME}"'",
      "address": "'"${ADDRESS}"'",
      "phone": "'"${PHONE}"'"
    }
  }'

echo

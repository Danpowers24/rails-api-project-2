#!/bin/bash

curl "http://localhost:4741/days" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "day": {
      "date": "'"${DATE}"'",
      "pain_level": "'"${PAINLEVEL}"'",
      "notes": "'"${NOTES}"'"
    }
  }'

echo

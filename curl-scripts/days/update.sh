# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/days/${ID}" \
  --include \
  --request PATCH \
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

# Ex: ID=idgoeshere TOKEN=tokengoeshere sh curl-scripts/examples/destroy.sh

curl "http://localhost:4741/days/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "day": {
      "date": "'"${DATE}"'",
      "pain_level": "'"${PAINLEVEL}"'",
      "notes": "'"${NOTES}"'"
    }
  }'

echo

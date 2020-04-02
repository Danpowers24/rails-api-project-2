# Ex: TOKEN=tokengoeshere ID=idgoeshere sh curl-scripts/examples/show.sh

curl "http://localhost:4741/examples/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "days": {
      "date": "'"${DATE}"'",
      "pain_level": "'"${PAINLEVEL}"'",
      "notes": "'"${NOTES}"'"
    }
  }'

echo

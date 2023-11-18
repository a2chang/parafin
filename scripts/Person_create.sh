#!/bin/sh

source ../.env



curl https://api.parafin.com/v1/persons \
  -u ${PARAFIN_CLIENT_ID}:${PARAFIN_CLIENT_SECRET} \
  -d '{
    "first_name": "Isaac",
    "last_name": "Newton",
    "contact_email": "sin@devnull.com",
    "contact_phone": "6045550123", 
    "address": {
      "line1": "<redacted>",
      "city": "Vancouver",
      "state": "WA",
      "postal_code": "94043",
      "country": "US"
    },       
    "linked_businesses": [{
      "id": "'${BUSINESS_ID}'",
      "relationship": {
        "is_beneficial_owner": true,
        "is_representative": true
      }
    }]
  }'  

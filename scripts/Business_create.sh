#!/bin/sh

source ../.env



curl https://api.parafin.com/v1/businesses \
  -u ${PARAFIN_CLIENT_ID}:${PARAFIN_CLIENT_SECRET} \
  -d '{ 
    "legal_name": "Brainstem Inc.",
    "dba_name": "Brainstem",
    "address": {
      "line1": "<redacted>",
      "city": "Vancouver",
      "state": "WA",
      "postal_code": "94043",
      "country": "US"
    },
    "established_date": "2023-11-17",
    "incorporation_state": "CA",
    "incorporation_type": "llc"           
  }'



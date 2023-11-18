#!/bin/sh

source ../.env



curl https://api.parafin.com/v1/bank_accounts \
  -u ${PARAFIN_CLIENT_ID}:${PARAFIN_CLIENT_SECRET} \
  -d '{ 
    "business_id": "'${BUSINESS_ID}'",
    "routing_number": "021000021",
    "account_number": {
      "last4": "1234"
    },
    "currency": "USD"
  }'

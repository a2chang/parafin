#!/bin/sh

source ../.env



curl https://api.parafin.com/v1/sandbox/capital_product_offer \
  -u ${PARAFIN_CLIENT_ID}:${PARAFIN_CLIENT_SECRET} \
  -d '{ 
    "business_id": "'${BUSINESS_ID}'",
    "product_type": "flex_loan",
    "max_amount": 50000
  }'

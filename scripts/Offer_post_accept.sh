#!/bin/sh

source ../.env



curl https://api.parafin.com/v1/sandbox/fund_capital_product \
  -u ${PARAFIN_CLIENT_ID}:${PARAFIN_CLIENT_SECRET} \
  -d '{ 
    "business_id": "'${BUSINESS_ID}'"
  }'

# Parafin integration exercise


## Getting started

This repo uses submodules.  Be sure to run `git submodule init`.

To launch the application:
```
$ git clone https://github.com/a2chang/parafin.git
$ git submodule init
$ cd parafin-elements-flex-quickstart
$ npm install
$ cp ../.env .
```


## Contents

[.env](.env) Link to `.env` file in `parafin-elements-flex-quickstart` submodule.  Contains sandbox key id/secret.
[parafin-elements-flex-quickstart](parafin-elements-flex-quickstart) Modified fork of parafin repo.  Changes: modified App.js to include business id.
[scripts](scripts) Set of scripts which call the parafin API.


## Scripts

* `Business_create.sh` - create a business (record `business_id` in `.env`)
* `Person_create.sh` - create a person (record `person_id` in `.env`)
* `BankAccount_create.sh` - create a bank account
* `Offer_generate.sh` - generate a `flex_loan` offer to the business
* At this point, the user needs to click through the UI to accept the offer (Capital on its way)
* `Offer_post_accept.sh` - funds the offer and allows the UI to show the outstanding balance

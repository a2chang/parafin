# Parafin GrubDash integration


## Getting started

This repo uses submodules.  Be sure to run `git submodule init`.

To launch the web UI:
```
$ git clone https://github.com/a2chang/parafin.git
$ git submodule init
$ cd parafin-elements-flex-quickstart
$ npm install
$ cp ../.env .
$ npm run dev
```


## GrubDash questions

1.  Sharing data early even before project development has begun is an excellent idea - it means that at project launch, there
    will already be a wealth of historical data available, enabling Parafin to make higher quality decisions.  There are two
    ways that you can use to share your data:

	1.  You can export your data to CSV and upload through the dashboard.  Ensure that the required data sets (daily sales
		records, business and individual profiles, and bank account information) are included.  The dashboard will allow you
		to see the businesses that have been created, and will flag any schema mismatches or other import errors.
	    https://docs.parafin.com/share-data/methods/manual

		Alternatively, the CSVs can be uploaded to a shared S3 bucket.
		https://docs.parafin.com/share-data/methods/s3

	1.  Even better would be to automate the loading of data using the Parafin API.  Once a few entities are created in the
		system (Business, Person, Bank Account), the daily sales record can be fed to Parafin through a single REST API call.
		https://docs.parafin.com/share-data/methods/api

1.	Parafin allows you to define webhooks to be notified of certain types of events, including state changes to flex loans and
	cash advances.  You will need an HTTP endpoint that can accept POST requests with JSON payloads.  The endpoint needs to:

	* verify the webhook signature
	* parse and handle the event object
	* respond with a 2xx code

	You can configure your webhook endpoints through the Parafin dashboard.  There are sandbox APIs which can be used to
	trigger and test the endpoints.
	https://docs.parafin.com/program-management/webhooks


## Directory contents

* [.env](.env) Link to `.env` file in `parafin-elements-flex-quickstart` submodule.  Contains sandbox key id/secret.
* [parafin-elements-flex-quickstart](parafin-elements-flex-quickstart) Modified fork of parafin repo.  Changes: modified App.js to include person id.
* [scripts](scripts) Set of scripts which call the parafin API.
* [demo](demo) Contains a video of our demo.


## Scripts

* `Business_create.sh` - create a business (record `business_id` in `.env`)
* `Person_create.sh` - create a person (record `person_id` in `.env`)
* `BankAccount_create.sh` - create a bank account
* `Offer_generate.sh` - generate a `flex_loan` offer to the business
* At this point, the user needs to click through the UI to accept the offer (Capital on its way)
* `Offer_post_accept.sh` - funds the offer and allows the UI to show the outstanding balance

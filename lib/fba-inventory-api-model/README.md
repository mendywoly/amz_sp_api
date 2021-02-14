# fba-inventory-api-model

AmzSpApi::FbaInventoryApiModel - the Ruby gem for the Selling Partner API for FBA Inventory

The Selling Partner API for FBA Inventory lets you programmatically retrieve information about inventory in Amazon's fulfillment network.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 0.1.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen
For more information, please visit [https://sellercentral.amazon.com/gp/mws/contactus.html](https://sellercentral.amazon.com/gp/mws/contactus.html)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build fba-inventory-api-model.gemspec
```

Then either install the gem locally:

```shell
gem install ./fba-inventory-api-model-0.1.0.gem
```
(for development, run `gem install --dev ./fba-inventory-api-model-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'fba-inventory-api-model', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'fba-inventory-api-model', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'fba-inventory-api-model'

api_instance = AmzSpApi::FbaInventoryApiModel::FbaInventoryApi.new
granularity_type = 'granularity_type_example' # String | The granularity type for the inventory aggregation level.
granularity_id = 'granularity_id_example' # String | The granularity ID for the inventory aggregation level.
marketplace_ids = ['marketplace_ids_example'] # Array<String> | The marketplace ID for the marketplace for which to return inventory summaries.
opts = { 
  details: false, # BOOLEAN | true to return inventory summaries with additional summarized inventory details and quantities. Otherwise, returns inventory summaries only (default value).
  start_date_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | A start date and time in ISO8601 format. If specified, all inventory summaries that have changed since then are returned. You must specify a date and time that is no earlier than 18 months prior to the date and time when you call the API. Note: Changes in inboundWorkingQuantity, inboundShippedQuantity and inboundReceivingQuantity are not detected.
  seller_skus: ['seller_skus_example'], # Array<String> | A list of seller SKUs for which to return inventory summaries. You may specify up to 50 SKUs.
  next_token: 'next_token_example' # String | String token returned in the response of your previous request.
}

begin
  result = api_instance.get_inventory_summaries(granularity_type, granularity_id, marketplace_ids, opts)
  p result
rescue AmzSpApi::FbaInventoryApiModel::ApiError => e
  puts "Exception when calling FbaInventoryApi->get_inventory_summaries: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://sellingpartnerapi-na.amazon.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AmzSpApi::FbaInventoryApiModel::FbaInventoryApi* | [**get_inventory_summaries**](docs/FbaInventoryApi.md#get_inventory_summaries) | **GET** /fba/inventory/v1/summaries | 

## Documentation for Models

 - [AmzSpApi::FbaInventoryApiModel::Error](docs/Error.md)
 - [AmzSpApi::FbaInventoryApiModel::ErrorList](docs/ErrorList.md)
 - [AmzSpApi::FbaInventoryApiModel::GetInventorySummariesResponse](docs/GetInventorySummariesResponse.md)
 - [AmzSpApi::FbaInventoryApiModel::GetInventorySummariesResult](docs/GetInventorySummariesResult.md)
 - [AmzSpApi::FbaInventoryApiModel::Granularity](docs/Granularity.md)
 - [AmzSpApi::FbaInventoryApiModel::InventoryDetails](docs/InventoryDetails.md)
 - [AmzSpApi::FbaInventoryApiModel::InventorySummaries](docs/InventorySummaries.md)
 - [AmzSpApi::FbaInventoryApiModel::InventorySummary](docs/InventorySummary.md)
 - [AmzSpApi::FbaInventoryApiModel::Pagination](docs/Pagination.md)
 - [AmzSpApi::FbaInventoryApiModel::ResearchingQuantity](docs/ResearchingQuantity.md)
 - [AmzSpApi::FbaInventoryApiModel::ResearchingQuantityEntry](docs/ResearchingQuantityEntry.md)
 - [AmzSpApi::FbaInventoryApiModel::ReservedQuantity](docs/ReservedQuantity.md)
 - [AmzSpApi::FbaInventoryApiModel::UnfulfillableQuantity](docs/UnfulfillableQuantity.md)

## Documentation for Authorization

 All endpoints do not require authorization.

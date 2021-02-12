=begin
#Selling Partner API for Fulfillment Inbound

#The Selling Partner API for Fulfillment Inbound lets you create applications that create and update inbound shipments of inventory to Amazon's fulfillment network.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'date'

module AmzSpApi
  class SellerFreightClass
    N50 = '50'.freeze
    N55 = '55'.freeze
    N60 = '60'.freeze
    N65 = '65'.freeze
    N70 = '70'.freeze
    N775 = '77.5'.freeze
    N85 = '85'.freeze
    N925 = '92.5'.freeze
    N100 = '100'.freeze
    N110 = '110'.freeze
    N125 = '125'.freeze
    N150 = '150'.freeze
    N175 = '175'.freeze
    N200 = '200'.freeze
    N250 = '250'.freeze
    N300 = '300'.freeze
    N400 = '400'.freeze
    N500 = '500'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = SellerFreightClass.constants.select { |c| SellerFreightClass::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #SellerFreightClass" if constantValues.empty?
      value
    end
  end
end
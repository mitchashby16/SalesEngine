require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/file_reader'
require 'csv'
require_relative '../lib/items_repo'
require_relative '../lib/merchant_repo'
require_relative '../lib/customer_repo'
require_relative '../lib/invoice_items_repo'
require_relative '../lib/invoice_repo'
require_relative '../lib/items_repo'
require_relative '../lib/transaction_repo'
require 'bigdecimal'

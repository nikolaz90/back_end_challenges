require 'pry-byebug'
require 'date'
require 'json'

require_relative 'calculator/price_calculator'
require_relative 'calculator/period_calculator'
require_relative 'printer/json_printer'
require_relative 'transaction/rental_transaction'
require_relative 'transaction/transaction_processor'
require_relative 'fleet/car'
require_relative 'fleet/car_fleet'

Transaction::TransactionProcessor.process('data/input.json', 'data/output.json')

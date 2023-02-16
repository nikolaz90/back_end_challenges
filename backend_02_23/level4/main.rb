require 'pry-byebug'
require 'date'
require 'json'

require_relative 'calculator/price_calculator'
require_relative 'calculator/period_calculator'
require_relative 'calculator/commission_calculator'
require_relative 'printer/json_printer'
require_relative 'transaction/rental_transaction'
require_relative 'transaction/transaction_processor'
require_relative 'transaction/commission_transaction'
require_relative 'transaction/action_transaction'
require_relative 'transaction/transaction_beneficiaries'
require_relative 'fleet/car'
require_relative 'fleet/car_fleet'

Transaction::TransactionProcessor.process('data/input.json', 'data/output.json')

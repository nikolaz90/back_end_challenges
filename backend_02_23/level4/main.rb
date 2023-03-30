require 'pry-byebug'
require 'date'
require 'json'

require_relative 'lib/calculator/price_calculator'
require_relative 'lib/calculator/period_calculator'
require_relative 'lib/calculator/commission_calculator'
require_relative 'lib/printer/json_printer'
require_relative 'lib/transaction/rental_transaction'
require_relative 'lib/transaction/transaction_processor'
require_relative 'lib/transaction/commission_transaction'
require_relative 'lib/transaction/action_transaction'
require_relative 'lib/transaction/transaction_beneficiaries'
require_relative 'lib/fleet/car'
require_relative 'lib/fleet/car_fleet'

Transaction::TransactionProcessor.process('data/input.json', 'data/output.json')

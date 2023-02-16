require 'pry-byebug'
require 'json'
require 'date'
require_relative 'vehicle'
require_relative 'rental'
require_relative 'commission'
require_relative 'action'
require_relative 'rental_calculator'
require_relative 'option'
require_relative 'price'
require_relative 'booking_period'
require_relative 'owner'

input_file_path = 'data/input.json'

CALCULATOR = RentalCalculator.new(input_file_path)

# the below line will return calulation in ruby, which is easier to read in terminal
# CALCULATOR.compute_rate_with_options

File.open("data/output.json", "w") { |f| f.write(JSON.pretty_generate(CALCULATOR.compute_rate_with_options)) }

# for RSpec tests run:
## rspec rental_specs

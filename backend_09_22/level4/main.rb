require 'json'
require 'date'
require_relative 'vehicle'
require_relative 'rental'
require_relative 'commission'
require_relative 'transaction'

file = File.read('data/input.json')
DATA = JSON.parse(file, symbolize_names: true)
CARS = DATA[:cars]
RENTALS = DATA[:rentals]

def compute_rate
  rentals = RENTALS.map do |item|
    car = Vehicle.make_car(item[:car_id])
    rental = Rental.create_booking(item[:id], item[:start_date], item[:end_date], car, item[:distance])
    { id: rental.id, price: rental.price, commission: rental.commissions }
  end
  { rentals: rentals }
end

def compute_rate_with_actions
  rentals = RENTALS.map do |item|
    car = Vehicle.make_car(item[:car_id])
    rental = Rental.create_booking(item[:id], item[:start_date], item[:end_date], car, item[:distance])
    { id: rental.id, actions: rental.compute_actions }
  end
  { rentals: rentals }
end

def compute_rate_in_json
  JSON.generate(compute_rate)
  JSON.generate(compute_rate_with_actions)
end

p compute_rate

p compute_rate_with_actions

File.open("data/output.json", "w") { |f| f.write(JSON.pretty_generate(compute_rate_with_actions)) }

load 'main_spec.rb'

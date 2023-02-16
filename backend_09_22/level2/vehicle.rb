class Vehicle
  attr_reader :price_per_day, :price_per_km, :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @price_per_day = attributes[:price_per_day] || 0
    @price_per_km = attributes[:price_per_km] || 0
  end

  def self.get_daily(id)
    CARS.map { |item| item[:id] == id.to_i ? item[:price_per_day] : 0 }.sum
  end

  def self.get_kilometric(id)
    CARS.map { |item| item[:id] == id.to_i ? item[:price_per_km] : 0 }.sum
  end

  def self.make_car(id)
    Vehicle.new(id: id, price_per_day: Vehicle.get_daily(id), price_per_km: Vehicle.get_kilometric(id))
  end
end

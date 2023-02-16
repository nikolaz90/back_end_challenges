class Vehicle
  attr_reader :price_per_day, :price_per_km, :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @price_per_day = Vehicle.get_daily(@id, attributes[:cars_data]) || 0
    @price_per_km = Vehicle.get_kilometric(@id, attributes[:cars_data]) || 0
  end

  def self.get_daily(id, cars_data)
    cars_data.map { |item| item[:id] == id.to_i ? item[:price_per_day] : 0 }.sum
  end

  def self.get_kilometric(id, cars_data)
    cars_data.map { |item| item[:id] == id.to_i ? item[:price_per_km] : 0 }.sum
  end
end

# Will create rental instance, and calculate duration of booking in days
class Rental
  attr_reader :id, :price

  def initialize(attributes = {})
    @id = attributes[:id]
    @car = attributes[:car]
    @distance = attributes[:distance] || 0
    @start_date = attributes[:start_date]
    @end_date = attributes[:end_date]
    @days = Rental.get_days_booked(@start_date, @end_date) || 0
    @price = (@days * @car.price_per_day) + (@distance * @car.price_per_km) || 0
  end

  def self.get_days_booked(begin_date, stop_date)
    (Date.parse(stop_date, '%Y-%m-%d') - Date.parse(begin_date, '%Y-%m-%d')).to_i + 1
  end

  def self.create_booking(id, start_date, end_date, car, distance)
    Rental.new(id: id, start_date: start_date, end_date: end_date, car: car, distance: distance)
  end
end

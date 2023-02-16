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
    @price = Rental.get_price(@days, @car.price_per_day, @distance, @car.price_per_km) || 0
  end

  def self.get_days_booked(begin_date, stop_date)
    (Date.parse(stop_date, '%Y-%m-%d') - Date.parse(begin_date, '%Y-%m-%d')).to_i + 1
  end

  def self.create_booking(id, start_date, end_date, car, distance)
    Rental.new(id: id, start_date: start_date, end_date: end_date, car: car, distance: distance)
  end

  def self.get_price(days, price_per_day, distance, price_per_km)
    price = 0
    while days.positive?
      temp_price =  price_per_day
      temp_price = (price_per_day * 0.5) if days >= 10
      temp_price = (price_per_day * 0.7) if days >= 5 && days <= 9
      temp_price = (price_per_day * 0.9) if days == 2
      price += temp_price
      days -= 1
    end
    (price + (distance * price_per_km)).to_i
  end
end

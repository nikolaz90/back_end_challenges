# Will create rental instance
class Rental
  attr_reader :days, :price, :options

  def initialize(attributes = {})
    rental = attributes[:rental]
    @car = attributes[:car]
    @id = rental[:id]
    @distance = rental[:distance] || 0
    @days = BookingPeriod.get_days_booked(rental[:start_date], rental[:end_date])
    @price = Price.get_price(@days, @car.price_per_day, @distance, @car.price_per_km) || 0
    @options = attributes[:options]
  end

  def rental_details
    { id: @id, actions: compute_actions, options: @options }
  end

  private

  def compute_actions
    Action.new(
      commissions: Commission.all_fees(@price, @days),
      rental: self
    ).actions
  end
end

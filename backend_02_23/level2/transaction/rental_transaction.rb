module Transaction
  class RentalTransaction
    def initialize(attributes = {})
      @car = attributes[:car]
      @distance = attributes[:rental][:distance]
      @id = attributes[:rental][:id]
      @period = Calculator::PeriodCalculator.number_of_days(attributes[:rental][:start_date], attributes[:rental][:end_date])
      @price = Calculator::PriceCalculator.compute_basic_with_discount(@period, @car.daily_rate, @distance, @car.km_rate)
    end

    def self.create(attributes = {})
      new(attributes).hashify_self
    end

    def hashify_self
      { id: @id, price: @price }
    end
  end
end

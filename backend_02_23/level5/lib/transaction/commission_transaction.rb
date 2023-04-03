module Transaction
  class CommissionTransaction
    def initialize(attributes = {})
      calculator = Calculator::DrivyCalculator.new
      @owner_fee = calculator.owner_fee(attributes[:price])
      @insurance_fee = calculator.insurance_fee(attributes[:price])
      @assistance_fee = calculator.assistance_fee(attributes[:period])
      @drivy_fee = calculator.drivy_fee(attributes[:price], attributes[:period])
      @driver_fee = calculator.driver_fee(@drivy_fee, @assistance_fee, @insurance_fee, @owner_fee)
    end

    def self.create(attributes = {})
      hash_of_fees = new(attributes).hashify_self
      Calculator::DrivyCalculator.new.calculate_and_add_price_of_options(
        attributes[:period],
        attributes[:options],
        hash_of_fees
      )
    end

    def hashify_self
      {
        insurance: @insurance_fee,
        assistance: @assistance_fee,
        drivy: @drivy_fee,
        owner: @owner_fee,
        driver: @driver_fee
      }
    end
  end
end

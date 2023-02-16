module Transaction
  class CommissionTransaction
    def initialize(attributes = {})
      @driver_fee = attributes[:price]
      @owner_fee = Calculator::CommissionCalculator.owner_fee(attributes[:price])
      @insurance_fee = Calculator::CommissionCalculator.insurance_fee(attributes[:price])
      @assistance_fee = Calculator::CommissionCalculator.assistance_fee(attributes[:period])
      @drivy_fee = Calculator::CommissionCalculator.drivy_fee(attributes[:price], attributes[:period])
    end

    def self.create(attributes = {})
      new(attributes).hashify_self
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

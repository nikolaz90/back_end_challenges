module Transaction
  class CommissionTransaction
    def initialize(attributes = {})
      @insurance_fee = Calculator::CommissionCalculator.insurance_fee(attributes[:price])
      @assistance_fee = Calculator::CommissionCalculator.assistance_fee(attributes[:period])
      @drivy_fee = Calculator::CommissionCalculator.drivy_fee(attributes[:price], attributes[:period])
    end

    def self.create(attributes = {})
      new(attributes).hashify_self
    end

    def hashify_self
      {
        insurance_fee: @insurance_fee,
        assistance_fee: @assistance_fee,
        drivy_fee: @drivy_fee
      }
    end
  end
end

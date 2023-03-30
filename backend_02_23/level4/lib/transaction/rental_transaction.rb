module Transaction
  class RentalTransaction
    def initialize(attributes = {})
      @car = attributes[:car]
      @distance = attributes[:rental][:distance]
      @id = attributes[:rental][:id]
      @period = Calculator::PeriodCalculator.number_of_days(attributes[:rental][:start_date], attributes[:rental][:end_date])
      @price = Calculator::PriceCalculator.compute_basic_with_discount(@period, @car.daily_rate, @distance, @car.km_rate)
      @commission = Transaction::CommissionTransaction.create(period: @period, price: @price)
      @actions = create_actions
    end

    def self.create(attributes = {})
      new(attributes).hashify_self
    end

    def hashify_self
      { id: @id, actions: @actions }
    end

    private

    def create_actions
      BENEFICIARIES.map do |item|
        Transaction::ActionTransaction.create(
          who: item[:who],
          type: item[:type],
          amount: @commission[item[:who].to_sym]
        )
      end
    end
  end
end

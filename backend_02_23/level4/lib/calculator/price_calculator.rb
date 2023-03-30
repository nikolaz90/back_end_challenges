module Calculator
  class PriceCalculator
    def self.compute_basic_total(period, daily_rate, distance, km_rate)
      (period * daily_rate) + (distance * km_rate)
    end

    def self.compute_basic_with_discount(period, daily_rate, distance, km_rate)
      total = 0
      while period.positive?
        temp_price = daily_rate
        temp_price = (daily_rate * 0.5) if period >= 10
        temp_price = (daily_rate * 0.7) if period >= 5 && period <= 9
        temp_price = (daily_rate * 0.9) if period == 2
        total += temp_price
        period -= 1
      end
      (total + (distance * km_rate)).to_i
    end
  end
end

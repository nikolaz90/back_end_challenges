module Calculator
  class PriceCalculator
    def self.compute_basic_total(period, daily_rate, distance, km_rate)
      (period * daily_rate) + (distance * km_rate)
    end
  end
end

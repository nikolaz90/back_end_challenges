module Calculator
  class PeriodCalculator
    def self.number_of_days(start_date, end_date)
      (Date.parse(end_date, '%Y-%m-%d') - Date.parse(start_date, '%Y-%m-%d')).to_i + 1
    end
  end
end

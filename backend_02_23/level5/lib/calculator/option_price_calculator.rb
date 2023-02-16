module Calculator
  class OptionPriceCalculator
    def self.calculate_and_add_price_of_options(period, options, hash_of_fees)
      beneficiaries = { gps: :owner, baby_seat: :owner, additional_insurance: :drivy }
      options.each do |item|
        price_of_option = period * Fleet::CAR_OPTIONS[item.to_sym]
        hash_of_fees[beneficiaries[item.to_sym]] += price_of_option
        hash_of_fees[:driver] += price_of_option
      end
      hash_of_fees
    end
  end
end

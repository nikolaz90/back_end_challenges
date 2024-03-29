module Calculator
  module Commissions
    def drivy_fee(price, period)
      price *= 0.3
      (price - ((price / 2) + (period * 100))).to_i
    end

    def assistance_fee(period)
      (period * 100).to_i
    end

    def insurance_fee(price)
      ((price * 0.3) / 2).to_i
    end

    def owner_fee(price)
      (price * 0.7).to_i
    end

    def driver_fee(drivy_fee, assistance_fee, insurance_fee, owner_fee)
      (drivy_fee + assistance_fee + insurance_fee + owner_fee).to_i
    end
  end
end

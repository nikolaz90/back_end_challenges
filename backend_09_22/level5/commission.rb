# Will create commission instance for a booking. It will calculate the initial commissions before adding options
class Commission
  def self.all_fees(price, days)
    price *= 0.3
    insurance_fee = (price * 0.5).to_i
    assistance_fee = (days * 100).to_i
    drivy_fee = (price - (insurance_fee + assistance_fee)).to_i
    { insurance_fee: insurance_fee, assistance_fee: assistance_fee, drivy_fee: drivy_fee }
  end
end

# Will create commission instance for a booking.
class Commission
  attr_reader :id, :insurance_fee, :assistance_fee, :drivy_fee

  def initialize(attributes = {})
    @id = attributes[:id]
    @insurance_fee = attributes[:insurance_fee] || 0
    @assistance_fee = attributes[:assistance_fee] || 0
    @drivy_fee = attributes[:drivy_fee] || 0
  end

  def self.create(rental_price, rental_days)
    rental_price *= 0.3
    insurance_fee = (rental_price * 0.5).to_i
    assistance_fee = (rental_days * 100).to_i
    drivy_fee = (rental_price - (insurance_fee + assistance_fee)).to_i
    Commission.new(insurance_fee: insurance_fee, assistance_fee: assistance_fee, drivy_fee: drivy_fee)
  end

  def all_fees
    { insurance_fee: @insurance_fee, assistance_fee: @assistance_fee, drivy_fee: @drivy_fee }
  end
end

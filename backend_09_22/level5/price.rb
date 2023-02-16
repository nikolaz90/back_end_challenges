class Price
  def self.get_price(days, price_per_day, distance, price_per_km)
    price = 0
    while days.positive?
      temp_price =  price_per_day
      temp_price = (price_per_day * 0.5) if days >= 10
      temp_price = (price_per_day * 0.7) if days >= 5 && days <= 9
      temp_price = (price_per_day * 0.9) if days == 2
      price += temp_price
      days -= 1
    end
    (price + (distance * price_per_km)).to_i
  end
end

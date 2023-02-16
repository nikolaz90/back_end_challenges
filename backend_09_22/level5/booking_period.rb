class BookingPeriod
  def self.get_days_booked(begin_date, stop_date)
    (Date.parse(stop_date, '%Y-%m-%d') - Date.parse(begin_date, '%Y-%m-%d')).to_i + 1
  end
end

module Fleet
  CAR_OPTIONS = {
    gps: 500,
    baby_seat: 200,
    additional_insurance: 1000
}.freeze

  class CarOption
    def self.find_car_options_for_rental(options_data, rental_id)
      options_data.map { |option| option[:type] if option[:rental_id] == rental_id }.compact
    end
  end
end

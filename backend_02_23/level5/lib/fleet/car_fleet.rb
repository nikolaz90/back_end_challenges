module Fleet
  class CarFleet
    def initialize(car_data)
      @cars = car_data.map do |item|
        Car.new(
          id: item[:id],
          daily_rate: item[:price_per_day],
          km_rate: item[:price_per_km]
        )
      end
    end

    def find(id)
      @cars.find { |item| item.id == id }
    end

    # def self.find_car_for_rental(car_data, car_id)
    #   car_data.select { |car| car[:id] == car_id }.compact
    # end
  end
end

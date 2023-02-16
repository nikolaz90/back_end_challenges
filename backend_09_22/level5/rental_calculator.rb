class RentalCalculator
  def initialize(file_path)
    @file = File.read(file_path)
    @data = JSON.parse(@file, symbolize_names: true)
    @cars = @data[:cars]
    @rentals = @data[:rentals]
    @options = @data[:options]
  end

  def compute_rate_with_options
    rentals = @rentals.map do |item|
      Rental.new(
        car: Vehicle.new(id: item[:car_id], cars_data: @cars),
        options: Option.retrieve_options(item, @options),
        rental: item
      ).rental_details
    end
    { rentals: rentals }
  end
end

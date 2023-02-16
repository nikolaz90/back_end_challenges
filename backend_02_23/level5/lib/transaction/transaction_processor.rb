module Transaction
  class TransactionProcessor
    def self.process(input_file_path, output_file_path)
      data_input = JSON.parse(File.read(input_file_path), symbolize_names: true)
      car_fleet = Fleet::CarFleet.new(data_input[:cars])

      rentals_output = data_input[:rentals].map do |item|
        rental_options = Fleet::CarOption.find_car_options_for_rental(data_input[:options], item[:id])
        car = car_fleet.find(item[:car_id])
        RentalTransaction.create(rental: item, car: car, options: rental_options)
      end
      data_output = { rentals: rentals_output }
      Printer::JSONPrinter.print(input_file_path, output_file_path, data_output)
    end
  end
end

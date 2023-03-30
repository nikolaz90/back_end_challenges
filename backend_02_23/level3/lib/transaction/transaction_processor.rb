module Transaction
  class TransactionProcessor
    def self.process(input_file_path, output_file_path)
      data_input = JSON.parse(File.read(input_file_path), symbolize_names: true)
      car_fleet = Fleet::CarFleet.new(data_input[:cars])

      rentals_output = data_input[:rentals].map do |item|
        RentalTransaction.create(rental: item, car: car_fleet.find(item[:car_id]))
      end
      data_output = { rentals: rentals_output }
      Printer::JSONPrinter.print(input_file_path, output_file_path, data_output)
    end
  end
end

module Printer
  class JSONPrinter
    def self.print(input_file_path, output_file_path, data)
      p "printing... #{input_file_path} to #{output_file_path}"
      output_data = JSON.pretty_generate(data)
      File.open(output_file_path, 'w') { |f| f.write(output_data) }
      p 'finished printing.'
    end
  end
end

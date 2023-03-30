module Fleet
  class Car
    attr_reader :id, :daily_rate, :km_rate

    def initialize(attributes = {})
      @id = attributes[:id]
      @daily_rate = attributes[:daily_rate]
      @km_rate = attributes[:km_rate]
    end
  end
end

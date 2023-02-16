class Option
  def self.retrieve_options(item, options)
    options.filter_map { |opt| opt[:type] if opt[:rental_id] == item[:id] }
  end

  # takes the action object and increments amounts to the appropriate "people" on that action object
  def self.calculate_options(action)
    action.options.each do |item|
      case item
      when 'gps'
        action.driver_owes += 500 * action.days
        action.owner_owed += 500 * action.days
      when 'baby_seat'
        action.driver_owes += 200 * action.days
        action.owner_owed += 200 * action.days
      when 'additional_insurance'
        action.driver_owes += 1000 * action.days
        action.commissions[:drivy_fee] += 1000 * action.days
      end
    end
  end
end

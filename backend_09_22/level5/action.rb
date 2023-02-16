class Action
  attr_accessor :driver_owes, :owner_owed
  attr_reader :commissions, :options, :days

  def initialize(attributes = {})
    @commissions = attributes[:commissions]
    @rental = attributes[:rental]
    @driver_owes = @rental.price
    @owner_owed = Owner.compute_owner_owed(@commissions, @driver_owes)
    @options = @rental.options
    @days = @rental.days
    Option.calculate_options(self)
  end

  def actions
    hashify_commissions.map do |key, val|
      type = key == :driver ? 'debit' : 'credit'
      { who: key, type: type, amount: val }
    end
  end

  private

  def hashify_commissions
    {
      driver: @driver_owes,
      owner: @owner_owed,
      insurance: @commissions[:insurance_fee],
      assistance: @commissions[:assistance_fee],
      drivy: @commissions[:drivy_fee]
    }
  end
end

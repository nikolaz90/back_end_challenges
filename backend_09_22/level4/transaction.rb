class Transaction
  attr_accessor :driver_owes, :owner_owed

  def initialize(attributes = {})
    @commissions = attributes[:commissions]
    @driver_owes = attributes[:driver_owes]
    @owner_owed = attributes[:owner_owed]
  end

  def self.create(commissions, price)
    commission_total = commissions.values.sum
    owner_owed = price - commission_total
    Transaction.new(commissions: commissions, driver_owes: price, owner_owed: owner_owed)
  end

  def actions
    hashify_commissions.map do |key, val|
      type = 'debit' if key == :driver
      type = 'credit' unless key == :driver
      detailed_transaction(key, type, val)
    end
  end

  private

  def detailed_transaction(who, type, amount)
    { who: who, type: type, amount: amount }
  end

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

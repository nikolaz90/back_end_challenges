class Owner
  def self.compute_owner_owed(commissions, price)
    commission_total = commissions.values.sum
    price - commission_total
  end
end

puts compute_rate_with_actions[:rentals].length == 3 ? '1: OK returns rentals key, an array, length: 3' : '1: error, expected length of 3'

puts compute_rate_with_actions.instance_of?(Hash) ? '2: OK returns hash class' : '2: error, should be a hash'

p '----------------------------first transaction---------------------------------------'
p '----------------------------first transaction---------------------------------------'
p '----------------------------first transaction---------------------------------------'
p '----------------------------first transaction---------------------------------------'

if compute_rate_with_actions[:rentals][0][:actions][0][:who] == :driver
  puts '3: OK returns the driver'
else
  puts '3: error should return driver'
end

if compute_rate_with_actions[:rentals][0][:actions][0][:type] == 'debit'
  puts '4: OK returns debit'
else
  puts '4: error should return debit'
end

if compute_rate_with_actions[:rentals][0][:actions][0][:amount] == 3000
  puts '5: OK returns the correct amount'
else
  puts '5: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][0][:actions][1][:who] == :owner
  puts '6: OK returns the correct amount'
else
  puts '6: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][0][:actions][1][:type] == 'credit'
  puts '7: OK returns debit'
else
  puts '7: error should return debit'
end

if compute_rate_with_actions[:rentals][0][:actions][1][:amount] == 2100
  puts '8: OK returns the correct amount'
else
  puts '8: error should return the correct amount'
end


if compute_rate_with_actions[:rentals][0][:actions][2][:who] == :insurance
  puts '9: OK returns the correct amount'
else
  puts '9: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][0][:actions][2][:type] == 'credit'
  puts '10: OK returns debit'
else
  puts '10: error should return debit'
end

if compute_rate_with_actions[:rentals][0][:actions][2][:amount] == 450
  puts '11: OK returns the correct amount'
else
  puts '11: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][0][:actions][3][:who] == :assistance
  puts '12: OK returns the correct amount'
else
  puts '12: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][0][:actions][3][:type] == 'credit'
  puts '13: OK returns debit'
else
  puts '13: error should return debit'
end

if compute_rate_with_actions[:rentals][0][:actions][3][:amount] == 100
  puts '14: OK returns the correct amount'
else
  puts '14: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][0][:actions][4][:who] == :drivy
  puts '15: OK returns the correct amount'
else
  puts '15: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][0][:actions][4][:type] == 'credit'
  puts '16: OK returns debit'
else
  puts '16: error should return debit'
end

if compute_rate_with_actions[:rentals][0][:actions][4][:amount] == 350
  puts '17: OK returns the correct amount'
else
  puts '17: error should return the correct amount'
end

p '----------------------------Second transaction---------------------------------------'
p '----------------------------Second transaction---------------------------------------'
p '----------------------------Second transaction---------------------------------------'
p '----------------------------Second transaction---------------------------------------'

if compute_rate_with_actions[:rentals][1][:actions][0][:who] == :driver
  puts '3: OK returns the driver'
else
  puts '3: error should return driver'
end

if compute_rate_with_actions[:rentals][1][:actions][0][:type] == 'debit'
  puts '4: OK returns debit'
else
  puts '4: error should return debit'
end

if compute_rate_with_actions[:rentals][1][:actions][0][:amount] == 6800
  puts '5: OK returns the correct amount'
else
  puts '5: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][1][:actions][1][:who] == :owner
  puts '6: OK returns the correct amount'
else
  puts '6: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][1][:actions][1][:type] == 'credit'
  puts '7: OK returns debit'
else
  puts '7: error should return debit'
end

if compute_rate_with_actions[:rentals][1][:actions][1][:amount] == 4760
  puts '8: OK returns the correct amount'
else
  puts '8: error should return the correct amount'
end


if compute_rate_with_actions[:rentals][1][:actions][2][:who] == :insurance
  puts '9: OK returns the correct amount'
else
  puts '9: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][1][:actions][2][:type] == 'credit'
  puts '10: OK returns debit'
else
  puts '10: error should return debit'
end

if compute_rate_with_actions[:rentals][1][:actions][2][:amount] == 1020
  puts '11: OK returns the correct amount'
else
  puts '11: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][1][:actions][3][:who] == :assistance
  puts '12: OK returns the correct amount'
else
  puts '12: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][1][:actions][3][:type] == 'credit'
  puts '13: OK returns debit'
else
  puts '13: error should return debit'
end

if compute_rate_with_actions[:rentals][1][:actions][3][:amount] == 200
  puts '14: OK returns the correct amount'
else
  puts '14: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][1][:actions][4][:who] == :drivy
  puts '15: OK returns the correct amount'
else
  puts '15: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][1][:actions][4][:type] == 'credit'
  puts '16: OK returns debit'
else
  puts '16: error should return debit'
end

if compute_rate_with_actions[:rentals][1][:actions][4][:amount] == 820
  puts '17: OK returns the correct amount'
else
  puts '17: error should return the correct amount'
end

p '----------------------------Third transaction---------------------------------------'
p '----------------------------Third transaction---------------------------------------'
p '----------------------------Third transaction---------------------------------------'
p '----------------------------Third transaction---------------------------------------'

if compute_rate_with_actions[:rentals][2][:actions][0][:who] == :driver
  puts '3: OK returns the driver'
else
  puts '3: error should return driver'
end

if compute_rate_with_actions[:rentals][2][:actions][0][:type] == 'debit'
  puts '4: OK returns debit'
else
  puts '4: error should return debit'
end

if compute_rate_with_actions[:rentals][2][:actions][0][:amount] == 27800
  puts '5: OK returns the correct amount'
else
  puts '5: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][2][:actions][1][:who] == :owner
  puts '6: OK returns the correct amount'
else
  puts '6: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][2][:actions][1][:type] == 'credit'
  puts '7: OK returns debit'
else
  puts '7: error should return debit'
end

if compute_rate_with_actions[:rentals][2][:actions][1][:amount] == 19460
  puts '8: OK returns the correct amount'
else
  puts '8: error should return the correct amount'
end


if compute_rate_with_actions[:rentals][2][:actions][2][:who] == :insurance
  puts '9: OK returns the correct amount'
else
  puts '9: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][2][:actions][2][:type] == 'credit'
  puts '10: OK returns debit'
else
  puts '10: error should return debit'
end

if compute_rate_with_actions[:rentals][2][:actions][2][:amount] == 4170
  puts '11: OK returns the correct amount'
else
  puts '11: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][2][:actions][3][:who] == :assistance
  puts '12: OK returns the correct amount'
else
  puts '12: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][2][:actions][3][:type] == 'credit'
  puts '13: OK returns debit'
else
  puts '13: error should return debit'
end

if compute_rate_with_actions[:rentals][2][:actions][3][:amount] == 1200
  puts '14: OK returns the correct amount'
else
  puts '14: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][2][:actions][4][:who] == :drivy
  puts '15: OK returns the correct amount'
else
  puts '15: error should return the correct amount'
end

if compute_rate_with_actions[:rentals][2][:actions][4][:type] == 'credit'
  puts '16: OK returns debit'
else
  puts '16: error should return debit'
end

if compute_rate_with_actions[:rentals][2][:actions][4][:amount] == 2970
  puts '17: OK returns the correct amount'
else
  puts '17: error should return the correct amount'
end

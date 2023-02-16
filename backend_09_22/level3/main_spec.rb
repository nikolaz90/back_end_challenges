puts compute_rate[:rentals].length == 3 ? '1: OK returns rentals key, an array, length: 3' : '1: error, expected length of 3'

puts compute_rate.instance_of?(Hash) ? '2: OK returns hash class' : '2: error, should be a hash'

puts compute_rate[:rentals][0][:price] == 3000 ? '3: OK returns correct price rental 1' : '3: error, should return correct price'

puts compute_rate[:rentals][1][:price] == 6800 ? '4: OK returns correct price rental 2' : '4:  error, should return correct price'

puts compute_rate[:rentals][2][:price] == 27_800 ? '5: OK returns correct price rental 3' : '5:  error, should return correct price'

puts compute_rate[:rentals][0][:commission].instance_of?(Hash) ? '6: Ok returns a hash for commissions' : '6: error no commissions hash'

if compute_rate[:rentals][0][:commission][:insurance_fee] == 450
  puts '7: OK returns correct insurance commission'
else
  puts '7: error, should return correct insurance commission'
end

if compute_rate[:rentals][0][:commission][:assistance_fee] == 100
  puts '8: OK returns correct assistance commission'
else
  puts '8: error, should return correct assistance commission'
end

if compute_rate[:rentals][0][:commission][:drivy_fee] == 350
  puts '9: OK returns correct drivy commission'
else
  puts '9: error, should return correct drivy commission'
end

if compute_rate[:rentals][1][:commission][:insurance_fee] == 1020
  puts '10: OK returns correct insurance commission'
else
  puts '10: error, should return correct insurance commission'
end

if compute_rate[:rentals][1][:commission][:assistance_fee] == 200
  puts '11: OK returns correct assistance commission'
else
  puts '11: error, should return correct assistance commission'
end

if compute_rate[:rentals][1][:commission][:drivy_fee] == 820
  puts '12: OK returns correct drivy commission'
else
  puts '12: error, should return correct drivy commission'
end

if compute_rate[:rentals][2][:commission][:insurance_fee] == 4170
  puts '13: OK returns correct insurance commission'
else
  puts '13: error, should return correct insurance commission'
end

if compute_rate[:rentals][2][:commission][:assistance_fee] == 1200
  puts '14: OK returns correct assistance commission'
else
  puts '14: error, should return correct assistance commission'
end

if compute_rate[:rentals][2][:commission][:drivy_fee] == 2970
  puts '15: OK returns correct drivy commission'
else
  puts '15: error, should return correct drivy commission'
end

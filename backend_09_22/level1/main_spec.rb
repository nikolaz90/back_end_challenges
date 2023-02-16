puts compute_rate[:rentals].length == 3 ? '1: OK returns rentals key, an array, length: 3' : '1: error, expected length of 3'

puts compute_rate.instance_of?(Hash) ? '2: OK returns hash class' : '2: error, should be a hash'

puts compute_rate[:rentals][0][:price] == 7000 ? '3: OK returns correct price rental 1' : '3: error, should return correct price'

puts compute_rate[:rentals][1][:price] == 15_500 ? '4: OK returns correct price rental 2' : '4:  error, should return correct price'

puts compute_rate[:rentals][2][:price] == 11_250 ? '5: OK returns correct price rental 3' : '5:  error, should return correct price'

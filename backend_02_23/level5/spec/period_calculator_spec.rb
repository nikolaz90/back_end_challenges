require_relative '../main'

describe 'Period Calculator' do
  it 'should calculate the period of a booking in days, when given start and end dates' do
    expect(Calculator::DrivyCalculator.new.number_of_days('2017-12-8', '2017-12-10')).to eq 3
    expect(Calculator::DrivyCalculator.new.number_of_days('2017-12-14', '2017-12-18')).to eq 5
  end
end

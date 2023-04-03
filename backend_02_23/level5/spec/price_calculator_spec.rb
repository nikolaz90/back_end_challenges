require_relative '../main'

describe "Price Calculator" do
  it 'should return the corresponding basic rate on a car, given daily rate, rate per km, distance travelled and days rented' do
    expect(Calculator::DrivyCalculator.new.compute_basic_total(3, 3000, 150, 15)).to eq 11250
    expect(Calculator::DrivyCalculator.new.compute_basic_total(12, 1200, 255, 10)).to eq 16950
  end
end

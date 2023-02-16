require_relative '../main'

# Rental two actions

describe 'Rental two' do
  it 'The second rental, and driver action should calculate the correct amount' do
    expected_output = { who: :driver, type: 'debit', amount: 8800 }
    expect(CALCULATOR.compute_rate_with_options[:rentals][1][:actions].first).to eq expected_output
  end

  it 'The second rental, and owner action should calculate the correct amount' do
    expected_output = { who: :owner, type: 'credit', amount: 4760 }
    expect(CALCULATOR.compute_rate_with_options[:rentals][1][:actions][1]).to eq expected_output
  end

  it 'The second rental, and insurance action should calculate the correct amount' do
    expected_output = { who: :insurance, type: 'credit', amount: 1020 }
    expect(CALCULATOR.compute_rate_with_options[:rentals][1][:actions][2]).to eq expected_output
  end

  it 'The second rental, and assistance action should calculate the correct amount' do
    expected_output = { who: :assistance, type: 'credit', amount: 200 }
    expect(CALCULATOR.compute_rate_with_options[:rentals][1][:actions][3]).to eq expected_output
  end

  it 'The second rental, and drivy action should calculate the correct amount' do
    expected_output = { who: :drivy, type: 'credit', amount: 2820 }
    expect(CALCULATOR.compute_rate_with_options[:rentals][1][:actions][4]).to eq expected_output
  end
end

require_relative '../main'

# Rental one actions

describe 'Rental one' do
  it 'The first rental, and driver action should calculate the correct amount' do
    expected_output = { who: :driver, type: 'debit', amount: 3700 }
    expect(CALCULATOR.compute_rate_with_options[:rentals].first[:actions].first).to eq expected_output
  end

  it 'The first rental, and owner action should calculate the correct amount' do
    expected_output = { who: :owner, type: 'credit', amount: 2800 }
    expect(CALCULATOR.compute_rate_with_options[:rentals].first[:actions][1]).to eq expected_output
  end

  it 'The first rental, and insurance action should calculate the correct amount' do
    expected_output = { who: :insurance, type: 'credit', amount: 450 }
    expect(CALCULATOR.compute_rate_with_options[:rentals].first[:actions][2]).to eq expected_output
  end

  it 'The first rental, and assistance action should calculate the correct amount' do
    expected_output = { who: :assistance, type: 'credit', amount: 100 }
    expect(CALCULATOR.compute_rate_with_options[:rentals].first[:actions][3]).to eq expected_output
  end

  it 'The first rental, and drivy action should calculate the correct amount' do
    expected_output = { who: :drivy, type: 'credit', amount: 350 }
    expect(CALCULATOR.compute_rate_with_options[:rentals].first[:actions][4]).to eq expected_output
  end
end

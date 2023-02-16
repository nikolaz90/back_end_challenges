require_relative '../main'

# Rental two actions

describe 'Rental three' do
  it 'The third rental, and driver action should calculate the correct amount' do
    expected_output = { who: :driver, type: 'debit', amount: 27_800 }
    expect(CALCULATOR.compute_rate_with_options[:rentals][2][:actions].first).to eq expected_output
  end

  it 'The third rental, and owner action should calculate the correct amount' do
    expected_output = { who: :owner, type: 'credit', amount: 19_460 }
    expect(CALCULATOR.compute_rate_with_options[:rentals][2][:actions][1]).to eq expected_output
  end

  it 'The third rental, and insurance action should calculate the correct amount' do
    expected_output = { who: :insurance, type: 'credit', amount: 4170 }
    expect(CALCULATOR.compute_rate_with_options[:rentals][2][:actions][2]).to eq expected_output
  end

  it 'The third rental, and assistance action should calculate the correct amount' do
    expected_output = { who: :assistance, type: 'credit', amount: 1200 }
    expect(CALCULATOR.compute_rate_with_options[:rentals][2][:actions][3]).to eq expected_output
  end

  it 'The third rental, and drivy action should calculate the correct amount' do
    expected_output = { who: :drivy, type: 'credit', amount: 2970 }
    expect(CALCULATOR.compute_rate_with_options[:rentals][2][:actions][4]).to eq expected_output
  end
end

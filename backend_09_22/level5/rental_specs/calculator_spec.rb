require_relative "../main"

describe "Calculator" do
  it 'CALCULATOR should have a #compute_rate_with_options method' do
    expect(CALCULATOR.respond_to?(:compute_rate_with_options)).to eq true
  end

  it 'CALCULATOR#compute_rate_with_options should return a hash with key :rentals that has a value of an array of length 3.' do
    expect(CALCULATOR.compute_rate_with_options).to include :rentals
    expect(CALCULATOR.compute_rate_with_options.instance_of?(Hash)).to eq true
    expect(CALCULATOR.compute_rate_with_options[:rentals].instance_of?(Array)).to eq true
    expect(CALCULATOR.compute_rate_with_options[:rentals].length).to eq 3
  end

  it 'rentals should return hashes with id, actions and options' do
    rentals = CALCULATOR.compute_rate_with_options[:rentals]
    expect(rentals.all? { |rental| rental.instance_of?(Hash) }).to eq true
    expect(rentals.all? { |rental| rental.keys == %i[id actions options] }).to eq true
  end

  it 'every rental actions should an array with 5 hashes' do
    actions = CALCULATOR.compute_rate_with_options[:rentals].map { |item| item[:actions] }
    expect(actions.all? { |action| action.instance_of?(Array) }).to eq true
    expect(actions.all? { |action| action.length == 5 }).to eq true
  end
end

require_relative '../main'

describe 'Commission Transaction' do
  it 'should return accurate commissions when given price of rental, period and no options' do
    expected = {
      insurance: 450,
      driver: 3000,
      assistance: 100,
      drivy: 350,
      owner: 2100
    }
    expect(Transaction::CommissionTransaction.create(price: 3000, period: 1, options: [])).to eq expected
  end

  it 'should return accurate commissions when given price of rental, period with options' do
    expected = {
      insurance: 450,
      driver: 3500,
      assistance: 100,
      drivy: 350,
      owner: 2600
    }
    expect(Transaction::CommissionTransaction.create(price: 3000, period: 1, options: ["gps"])).to eq expected
  end
end

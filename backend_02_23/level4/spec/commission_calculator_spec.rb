require_relative '../main'

describe 'Commission Transaction' do
  it 'should return accurate commissions when given one price of rental' do
    expected = {
      insurance: 450,
      driver: 3000,
      assistance: 100,
      drivy: 350,
      owner: 2100
    }
    expect(Transaction::CommissionTransaction.create(price: 3000, period: 1)).to eq expected
  end
end

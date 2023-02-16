require_relative '../main'

describe 'Commission Transaction' do
  it 'should return accurate commissions when given one price of rental' do
    expected = {
      insurance_fee: 450,
      assistance_fee: 100,
      drivy_fee: 350
    }
    expect(Transaction::CommissionTransaction.create(price: 3000, period: 1)).to eq expected
  end
end

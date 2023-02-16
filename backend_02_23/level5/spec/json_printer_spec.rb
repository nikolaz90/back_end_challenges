require_relative '../main'

describe "JSON Printer" do
  it 'should have a print method' do
    expect(Printer::JSONPrinter.respond_to?(:print)).to eq true
  end
end

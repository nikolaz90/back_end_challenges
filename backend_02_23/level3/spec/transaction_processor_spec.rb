require_relative '../main'

describe 'Transaction Processor' do
  it 'should return a json which matches exactly the expected json' do
    output = JSON.parse(File.read('data/output.json'))
    expected_output = JSON.parse(File.read('data/expected_output.json'))
    expect(output).to eq expected_output
  end
end

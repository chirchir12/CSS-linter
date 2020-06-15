require_relative '../lib/error.rb'
describe ErrorHandler do
  let(:data) { ["#active {\n", "color: aliceblue ;\n"] }
  let(:obj) { ErrorHandler.new data }
  describe 'initialize' do
    it 'shoud expect @error_arr to be array' do
      expect(obj.error_arr).to be_a(Array)
    end
    it 'shoud expect @data to be array' do
      expect(obj.data).to be_a(Array)
    end
    it 'raises missing argument error' do
      expect { ErrorHandler.new }.to raise_error(ArgumentError)
    end
  end
end

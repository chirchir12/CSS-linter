require_relative '../lib/modules/error.rb'

describe ErrorModule do
  let(:start_style1) { "#active {\n" }
  let(:start_style4) { ".active {\n" }
  let(:start_style2) { "li.active{\n" }
  let(:start_style3) { 'chirchir' }
  let(:end_style1) { "}\n" }
  let(:rule1) { "color : aliceblue;\n" }
  let(:rule2) { "background-color: #6688 ;    \n" }
  let(:rule3) { "  background-position-y: bottom;\n" }

  describe '#start_of_style_block' do
    context 'when id is given ' do
      it 'should return true' do
        expect(start_of_style_block(str)).to eql(true)
      end
    end
  end
end
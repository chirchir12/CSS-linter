require 'colorize'
require_relative '../lib/error.rb'
describe ErrorModule do
  let(:validator) { ErrorHandler.new }
  let(:start_style1) { "#active {\n" }
  let(:start_style4) { ".active {\n" }
  let(:start_style2) { "li.active{\n" }
  let(:start_style3) { 'chirchir' }
  let(:end_style1) { "}\n" }
  let(:rule1) { "color : aliceblue;\n" }
  let(:rule5) { "color : aliceblue ;\n" }
  let(:rule4) { "color : aliceblue\n" }
  let(:rule2) { "background-color: #6688 ;    \n" }
  let(:rule3) { "  background-position-y: bottom;\n" }

  describe '#start_of_style_block' do
    context 'when id is given ' do
      it 'should return true' do
        expect(validator.start_of_style_block(start_style1)).to eql(true)
      end
    end
    context 'when class is given ' do
      it 'should return true' do
        expect(validator.start_of_style_block(start_style2)).to eql(true)
      end
    end
    context 'when it is not start of rule ' do
      it 'should return false' do
        expect(validator.start_of_style_block(start_style3)).to eql(false)
      end
      it 'should return false' do
        expect(validator.start_of_style_block(rule1)).to eql(false)
      end
    end
  end
  describe '#end_of_style_block' do
    it 'should return true' do
      expect(validator.end_of_style_block(end_style1)).to eql(true)
    end
    it 'should return false' do
      expect(validator.end_of_style_block(start_style1)).to eql(false)
    end
  end
  describe '#style_between_block' do
    it 'should return true' do
      expect(validator.style_between_block(rule1)).to eql(true)
    end
    it 'it should return false' do
      expect(validator.style_between_block(start_style1)).to eql(false)
    end
  end
  describe '#check_missing_semi_colon' do
    arr = []
    i = 30
    context 'when semicolon is present' do
      it 'should return true' do
        expect(validator.check_missing_semi_colon(rule1, i, arr)).to eql(true)
      end
    end
    context 'when there is no semicolon ' do
      it 'should add error to array' do
        validator.check_missing_semi_colon(rule4, i, arr)
        expect(!arr.empty?).to eql(true)
      end
    end
  end
  describe '#check_space_before_semi_colon' do
    arr = []
    i = 50
    it 'should return true' do
      expect(validator.check_space_before_semi_colon(rule1, i, arr)).to eql(true)
    end
    it 'should return true if there are errors' do
      validator.check_space_before_semi_colon(rule5, i, arr)
      expect(!arr.empty?).to eql(true)
    end
  end
  describe '#check_indentations' do
    arr = []
    i = 40
    it 'should return true when two single spaced passed' do
      expect(validator.check_indentations(rule3, i, arr)).to eql(true)
    end
    it 'should add errors to the erray' do
      validator.check_indentations(rule1, i, arr)
      expect(!arr.empty?).to eql(true)
    end
  end
end

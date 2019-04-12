# main tests
require './bin/main.rb'
RSpec.describe Enumerable do
  let(:array){[1, 2, 3, 4, 5]}
  describe '#my_each' do
    it 'takes an array of items and returns them individually' do
      expect(array.my_each { |i| i }).to eql(array)
    end
  end

  describe '#my_all' do
    it 'take and array and return checks that all match condition' do
      expect(array.my_all? { |i| i > 10 }).to eql(false)
    end
  end

  describe '#my_any' do
    it 'take an array and checks if any match requirement' do
      expect(array.my_any? { |i| i < 3 }).to eql(true)
    end
  end

  describe '#my_none' do
    it 'takes an array,checks than none match the rule' do
      expect(array.none? { |i| i > 4 }).to eql(false)
    end
  end

  context '#my_count return 5' do
    it 'takes nothing and returns the full array length' do
      expect(array.my_count).to eql(5)
    end
  end

  context '#my_count return 1' do
    it 'takes an array and return count of items that match it' do
      expect(array.my_count { |i| i > 4 }).to eql(1)
    end
  end

  describe 'my_map' do
    it 'takes and array and transforms based on block provided' do
      expect(array.my_map { |i| i + 1 }).to eql([2, 3, 4, 5, 6])
    end
  end
end

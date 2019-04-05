require './bin/main.rb'
# require_relative './bin/main.rb'

RSpec.describe Enumerable do
  array = [1, 2, 3, 4, 5]
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
end

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
end

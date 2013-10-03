require 'spec_helper'

describe CCalculator do
  describe '.calculate' do
    it 'returns correct result for sample correct input' do
      # setup
      calculator = CCalculator.new
      params = { male: true, weight: 89, height: 198, age: 25, activeness: 1.275 }

      # execute
      result =  calculator.calculate(params)

      # verify
      result.should == 2731
    end
  end

  describe '.male_bee' do
    it 'returns correct value' do
      calculator = CCalculator.new
      bee =  calculator.send(:male_bee, 60, 198, 0)
      bee.should == 0
    end
  end


  describe '.female_bee' do
    it 'returns correct value' do
      calculator = CCalculator.new
      bee = calculator.send(:female_bee, 11.2, 12.3, 15)
      bee.should == 0
    end
  end
end

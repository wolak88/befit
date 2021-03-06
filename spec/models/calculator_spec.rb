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
      result.should == 2663
    end
  end

  describe '.male_bee' do
    it 'returns correct value' do
      CCalculator.new.send(:male_bee, 60, 198, 5).should == 1813.999
      CCalculator.new.send(:male_bee, 60, 198, 5).should == 1813.999
      CCalculator.new.send(:male_bee, 60, 198, 5).should == 1813.999
    end
  end


  describe '.female_bee' do
    it 'returns correct value' do
      CCalculator.new.send(:female_bee, 65, 190, 24).should == 1533.348
    end
  end
end

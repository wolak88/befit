require 'spec_helper'

describe Calculator do
  describe '.calculate' do
    it 'returns correct result for sample correct input' do
      # setup
      calculator = Calculator.new
      a = 1
      b = 2

      # execute
      result =  calculator.calculate(a, b)

      # verify
      result.should == 10
    end

    it 'raises exception for negative input' do
      expect { Calculator.new}.to raise_exception /negative input/
    end
  end
end
require 'spec_helper'

describe CCalculator do
  describe '.calculate' do
    it 'returns correct result for sample correct input' do
      # setup
      calculator = CCalculator.new
      params = {
       male: true,
       weight: 89,
       height: 198,
       age: 25,
       activeness: 1.275
    }

      # execute
      result =  calculator.calculate(params)

      # verify
      result.should == 2731
    end
  end
end
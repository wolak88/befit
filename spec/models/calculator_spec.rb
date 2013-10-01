require 'spec_helper'

describe 'rspec' do
  it 'uses should syntax' do
    1.should == 1
  end

  it 'uses new expect syntax' do
    expect(1).to eq(1)
  end
end
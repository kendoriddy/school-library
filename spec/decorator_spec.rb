require_relative('spec_helper')

describe Decorator do
  before(:each) do
    @decorator = Decorator.new('RideOnOne')
  end

  it 'Create decorator with nameable' do
    expect(@decorator).to be_an_instance_of(Decorator)
  end
end

describe CapitalizeDecorator do
  before(:each) do
    @capitalize_decorator = CapitalizeDecorator.new('Anas')
  end

  it 'Create capitalize_decorator with nameable' do
    expect(@capitalize_decorator).to be_an_instance_of(CapitalizeDecorator)
  end
end

describe TrimmerDecorator do
  before(:each) do
    @trimmer_decorator = TrimmerDecorator.new('Kenny')
  end

  it 'Create trimmer_decorator with nameable' do
    expect(@trimmer_decorator).to be_an_instance_of(TrimmerDecorator)
  end
end

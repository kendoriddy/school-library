require_relative('spec_helper')

describe Rental do
  before(:each) do
    @person = Person.new(22, 'Josh')
    @book = Book.new('Intimacy', 'Analise')
  end

  it 'Create rental with both person & book' do
    rental = Rental.new('2022/08/31', @book, @person)
    expect(@book.rentals.first).to be(rental)
    expect(@person.rentals.first).to be(rental)
  end

  it 'Create rental with both person & book' do
    rental = Rental.new('2022/08/31', @book, @person)
    expect(rental.date).to eq('2022/08/31')
  end
end

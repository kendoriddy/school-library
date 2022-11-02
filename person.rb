require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def of_age
    @age >= 18
  end

  private :of_age

  def can_use_service
    of_age || @parent_permission == true
  end

  def correct_name
    @name
  end

  def rent_book(book, date)
    Rental.new(date, book, self)
  end
end

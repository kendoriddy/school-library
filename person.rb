require_relative 'nameable'
require_relative 'rental'
class Person < Nameable
  attr_accessor :name, :age, :parent_permission, :rentals
  attr_reader :id

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

  def can_use_service
    of_age || @parent_permission
  end

  def correct_name
    @name
  end

  def rent_book(book, date)
    Rental.new(date, book, self)
  end
end

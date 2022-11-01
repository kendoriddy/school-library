require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
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
end

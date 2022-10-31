class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, parent_permission: true, name: 'Unknown')
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
end

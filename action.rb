require './person'
require './decorator'

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_rimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_rimmed_person.correct_name

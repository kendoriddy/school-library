require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'book'
require_relative 'classroom'

class App
    def initialize
        @books = []
        @people = []
        @rentals = []
    end

    def create_person
        print 'To create a student, enter (1), to create a teacher enter (2) '
        option = gets.chomp

        case option
        when '1'
            create_student
        when '2'
            create_teacher
        else
            'Invalid input, please try again'
        end
    end
end
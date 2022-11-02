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

    def list_books
        put 'Empty' if @books.empty?
            @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
        end
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
        puts 'Person created successfully!'
    end

    def create_student
        print "Enter the student's name: "
        name = gets.chomp

        print "Enter the student's age: "
        age = gets.chomp

        print "Does the student have parent's permission? [Y/N] "
        parent_permission = gets.chomp.upcase

        case parent_permission
        when 'N'
            student = Student.new(name, age, parent_permission: false)
            @people.push(student)
        when 'Y'
            student = Student.new(name, age, parent_permission: false)
            @people.push(student)
        else
            'Invalid input, please try again'
        end
        puts 'Student created successfully!'
    end

    def create_teacher
        print "Enter teacher's name: "
        name = gets.chomp

        print "Enter teacher's age: "
        age = gets.chomp

        print "Enter Teacher's specialization: "
        specialization = gets.chomp

        teacher = Teacher.new(name, age, specialization, parent_permission: true)
        puts 'Teacher creatted successfully'
        @people.push(teacher)
    end
end
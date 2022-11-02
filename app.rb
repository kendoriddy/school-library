require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'book'
require_relative 'classroom'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def book_list
    puts 'No book!' if @books.empty?
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end

  def person_list
    puts 'No person!' if @people.empty?
    @people.each { |person| puts "[#{person.class}], Name: #{person.name}, Age: #{person.age}, Id: #{person.id}" }
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    option = gets.chomp

    case option
    when '1'
      create_student
    when '2'
      create_teacher
    else
      'You have entered an invalid input'
    end
    puts 'Person created successfully😊'
  end

  def create_teacher
    print "teacher's specialization: "
    specialization = gets.chomp

    print "teacher's age: "
    age = gets.chomp

    print "teacher's name: "
    name = gets.chomp

    teacher = Teacher.new(specialization, age, name, parent_permission: true)
    puts 'Teacher created successfully 😊'
    @people.push(teacher)
  end

  def create_student
    print "students's age: "
    age = gets.chomp

    print "students's name: "
    name = gets.chomp

    print 'has parent permission? [Y/N]: '
    parent_permission = gets.chomp.upcase

    case parent_permission
    when 'N'
      student = Student.new(nil, age, name, parent_permission: false)
      @people.push(student)
    when 'Y'
      student = Student.new(nil, age, name, parent_permission: true)
      @people.push(student)
    else
      'You have entered an invalid input'
    end

    puts 'Student created successfully 😊'
  end

  def create_book
    print "book's title: "
    title = gets.chomp

    print "book's author: "
    author = gets.chomp

    book = Book.new(title, author)
    @books.push(book)

    puts 'Book created successfully 😊'
  end

  def create_rental
    if @books.size.zero?
      puts 'No book available'

    elsif @people.size.zero?
      puts 'No person available'

    else
      puts 'Select a book by number'
      @books.each_with_index { |book, index| puts "#{index}) Title: #{book.title}, Author: #{book.author}" }
      selected_book = gets.chomp.to_i

      puts 'Select a person by number'
      @people.each_with_index do |person, index|
        puts "#{index}) Name: #{person.name} Age: #{person.age} Id: #{person.id}"
      end

      selected_person = gets.chomp.to_i

      puts 'Enter date [YYYY-MM-DD]'
      selected_date = gets.chomp.to_s

      rental_item = Rental.new(selected_date, @people[selected_person], @books[selected_book])
      @rentals.push(rental_item)

      puts 'Rental created successfully😊'
    end
  end

  def rental_list
    puts 'Enter person id'
    id = gets.chomp.to_i
    @rentals.each do |rental|
      if rental.person.id.to_i == id.to_i
        puts "Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}"

      end
    end
  end
end

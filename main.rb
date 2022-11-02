require_relative 'app'

class Main
    def self.home_page
        puts 'Welcome to our School Library!'

        Integer(gets.chomp)
    end
end
class Rental
    attr_accessor :date
    attr_reader :person, :book

    def initialize(date, person, book)
        @date = date
    end
  end
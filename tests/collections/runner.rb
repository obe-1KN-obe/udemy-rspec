class Person
    attr_accessor :firstname, :lastname
    
    def initialize(firstname, lastname)
      @firstname = firstname
      @lastname = lastname
    end
  
  end
  
  person = Person.new("John", "Doe")
  person.lastname = "Bull"
  
  puts person.lastname

class Person2

  attr_reader :firstname, :lastname
  
  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
  end

end

person2 = Person2.new("John", "Doe")
person2.lastname = "Bull"

puts person2.lastname

class Food
    def protein=(value)
      @protein = value
    end
end
bacon.protein = 25
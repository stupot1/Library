class Book
  
  attr_reader :available, :name, :author
  
  def initialize(name, author)
    @available = true
    @name = name
    @author = author
  end
  
  def loan_book
    @available = false
  end
  
  def return_book
    @available = true
  end
  
end
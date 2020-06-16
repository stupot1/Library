require 'book'



describe Book do
  
  let(:book) { Book.new("testname", "testauthor") }
  
  describe '#initialize' do
    it 'new book is initialized as available' do
      expect(book.available).to eq(true)
    end
  end
  describe '#loan_book' do
    it 'sets book available to false' do
      book.loan_book
      expect(book.available).to eq(false)
    end
  end
  describe '#return_book' do
    it 'sets book to available when returned' do 
      book.return_book 
      expect(book.available).to eq(true)
    end
  end
  describe '@name' do
    it 'returns testname for @name' do
      expect(book.name).to eq("testname")
    end
  end
end
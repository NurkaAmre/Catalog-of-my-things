require './f_classes/item'
require './f_classes/things/book'
require './app'

describe Book do
  context 'Given an instance of a book' do
    before :each do
      @books = Book.new('Lord of the rings', 'Good')
    end

    it 'returns a new book' do
      expect(@books).to be_instance_of Book
    end
  end
end


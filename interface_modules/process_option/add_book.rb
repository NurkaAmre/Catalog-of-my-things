require_relative '../../f_data_json/save_data'
require_relative '../../f_classes/things/book'

module AddBook
  include DataSaver
  def add_book
    print 'Enter book publisher: '.yellow
    publisher = gets.chomp
    puts

    print 'Enter condition of the cover [good/bad]: '.yellow
    cover_state = gets.chomp
    puts

    add_book = Book.new(publisher, cover_state)
    @books << { publisher: add_book.publisher, cover_state: add_book.cover_state }
    puts 'Book created successfully'.green
    save_book(@books)
  end
end

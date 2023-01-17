require_relative '../../f_data_json/save_data'
require_relative '../../f_classes/things/book'
require_relative '../../f_classes/things/f_associations/label'
require './app'

module AddBook
  include DataSaver
  def add_book
    print 'Enter date of book published: '.yellow
    publish_date = gets.chomp
    puts

    print 'Enter book publisher: '.yellow
    publisher = gets.chomp
    puts

    print 'Enter condition of the cover [good/bad]: '.yellow
    cover_state = gets.chomp
    puts

    print 'Enter book title: '.yellow
    title = gets.chomp
    puts

    print 'Enter color: '.yellow
    color = gets.chomp
    puts

    add_book = Book.new(publish_date, publisher, cover_state)
    @books << { publisher: add_book.publisher, cover_state: add_book.cover_state }
    add_label = Label.new(title, color)
    @labels << { title: add_label.title, color: add_label.color }
    puts 'Book created successfully'.green
    save_book(@books)
    save_label(@labels)
  end
end

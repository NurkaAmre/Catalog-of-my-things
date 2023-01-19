require_relative '../../f_data_json/save_data'
require_relative '../../f_classes/things/book'
require_relative '../../f_classes/things/f_associations/label'
require './app'

module AddBook
  include DataSaver
  def add_book
    date = Time.now
    formatted_time = date.strftime('%Y-%m-%d %H:%M:%S')
    publish_date = formatted_time

    print 'Enter Genre of book: '.yellow
    genre_name = gets.chomp
    puts

    print 'Enter Author first Name: '.yellow
    first_name = gets.chomp
    puts

    print 'Enter Author Last Name: '.yellow
    last_name = gets.chomp
    puts

    print 'Enter book publisher: '.yellow
    publisher = gets.chomp
    puts

    print 'Is the condition of the cover good or bad [g/b]: '.yellow
    cover_state = gets.chomp.downcase
    case cover_state
    when 'g'
      cover_state = 'good'
    when 'b'
      cover_state = 'bad'
    end
    puts

    print 'Enter label title: '.yellow
    title = gets.chomp
    puts

    print 'Enter label color: '.yellow
    color = gets.chomp
    puts

    add_book = Book.new(publish_date, publisher, cover_state: cover_state)
    @books << { publisher: add_book.publisher, cover_state: add_book.cover_state }
    add_label = Label.new(title, color)
    @labels << { title: add_label.title, color: add_label.color }
    add_author = Author.new(first_name, last_name)
    @authors << { first_name: add_author.first_name, last_name: add_author.last_name }
    add_genre = Genre.new(genre_name)
    @genres << { genre: add_genre.name }
    puts 'Book created successfully'.green
    save_book(@books)
    save_label(@labels)
    save_author(@authors)
    save_genre(@genres)
  end
end

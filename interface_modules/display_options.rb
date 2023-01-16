require_relative './process_option/add_book'
require_relative './process_option/add_music_album'
require_relative './process_option/add_game'
require_relative './process_option/list_books'
require_relative './process_option/list_games'
require_relative './process_option/list_music_albums'
require_relative './process_option/associations/list_authors'
require_relative './process_option/associations/list_genres'
require_relative './process_option/associations/list_labels'
require_relative './process_option/associations/list_sources'

module DisplayOptions
  include AddBook
  include AddGame
  include AddMusicAlbum
  include ListBook
  include ListGame
  include ListMusicAlbums
  include ListAuthors
  include ListGenre
  include ListLabel
  include ListSources

  def display_options
    menu
    option = gets.chomp.to_i
    case option
    when 1
      list_books
    when 2
      list_labels
    when 3
      list_music_albums
    when 4
      list_genres
    when 5
      list_games
    when 6
      list_authors
    when 7
      list_sources
    when 8
      add_book
    when 9
      add_music_album
    when 10
      add_game
    else
      exit
    end
    run
  end

  def menu
    options = [
      '1) List all books',
      '2) List all label',
      '3) List all music albums',
      '4) List all genres',
      '5) List all games',
      '6) List all authors',
      '7) List all sources',
      '8) Add a book',
      '9) Add a music',
      '10) Add a game',
      'Exit with other input'
    ]
    puts 'Welcome to my app'.green
    puts 'choose an option by entering a number: '.magenta
    options.each { |option| puts "  #{option}".cyan }
  end
end

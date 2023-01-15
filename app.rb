require 'colorize'
# frozen_string_literal: true

# my comment
class App
  def initialize
    @books = []
    @music_albums = []
    @games = []
    @movies = []

    @genres = []
    @authors = []
    @labels = []
    @sources = []
  end

  def run
    display_option
  end

  def menu
    options = [
      '1) List all books',
      '2) List all label',
      '3) List all music albums',
      '4) List all genres',
      '5) List all games',
      '6) List all authors',
      '7) List all movies',
      '8) List all sources',
      '9) Add a book',
      '10) Add a music',
      '11) Add a game',
      '12) Add a movie',
      '0) Exit'
    ]
    puts 'Welcome to my app'.green
    puts 'choose an option by entering a number: '.magenta
    options.each { |option| puts "  #{option}".cyan }
  end

  def display_option
    menu
    option = gets.chomp.to_i
    case option
    when 1
      list_all_books
    when 2
      list_all_labels
    when 3
      list_all_music_albums
    when 4
      list_all_genres
    when 5
      list_all_games
    when 6
      list_all_authors
    when 7
      list_all_movies
    when 8
      list_all_sources
    when 9
      add_book
    when 10
      add_music
    when 11
      add_game
    when 12
      add_movie
    else
      exit
    end
  end
end

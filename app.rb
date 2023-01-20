require 'colorize'
require_relative './interface_modules/display_options'
require_relative './f_data_json/save_data'
require_relative './f_data_json/read_data'

class App
  include DisplayOptions
  include DataSaver
  include DataReader
  def initialize
    @books = load_books
    @music_albums = load_music_albums
    @games = load_games

    @genres = load_genres
    @authors = load_authors
    @labels = load_labels
  end

  def run
    display_options
    exit
  end
end

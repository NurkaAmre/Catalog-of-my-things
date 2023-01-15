require 'colorize'
# frozen_string_literal: true
require_relative './interface_modules/display_options'

# my comment
class App
  include DisplayOptions

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
    display_options
    exit
  end
end

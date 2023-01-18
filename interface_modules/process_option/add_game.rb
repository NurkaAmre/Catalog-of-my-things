require 'colorize'
require_relative '../../f_data_json/save_data'
require_relative '../../f_classes/things/game'
require_relative '../../f_classes/things/f_associations/author'
require './app'

module AddGame
  include DataSaver
  def add_game
    
    publish_date = Time.now

    print 'Enter Genre of game: '.blue
    genre_name = gets.chomp
    puts

    print 'Enter Author first Name: '.blue
    first_name = gets.chomp
    puts

    print 'Enter Author Last Name: '.blue
    last_name = gets.chomp
    puts

    print 'Is it a Multiplayer game [yes/no]: '.blue
    multiplayer = gets.chomp
    case multiplayer
    when 'y'
      multiplayer = true
    when 'n'
      multiplayer = false
    end
    puts

    print 'Is it a Multiplayer game [y/n]: '.blue
    last_played_at = gets.chomp
    case last_played_at
    when 'y'
      last_played_at = true
    when 'n'
      last_played_at = false
    end
    puts

    print 'Enter label title: '.blue
    title = gets.chomp
    puts

    print 'Enter label color: '.blue
    color = gets.chomp
    puts

    add_game = Game.new(publish_date, multiplayer, last_played_at)
    @games << { publish_date: add_game.publish_date, multiplayer: add_game.multiplayer, last_played_at: add_game.last_played_at }
    add_label = Label.new(title, color)
    @labels << { title: add_label.title, color: add_label.color }
    add_author = Author.new(first_name, last_name)
    @authors << { first_name: add_author.first_name, last_name: add_author.last_name }
    add_genre = Genre.new(genre_name)
    @genres << { genre: add_genre.name }
    puts 'games created successfully'.green
    save_game(@games)
    save_label(@labels)
    save_author(@authors)
    save_genre(@genres)
  end
end

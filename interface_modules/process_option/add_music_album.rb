require_relative '../../f_data_json/save_data'
require_relative '../../f_classes/things/music_album'
require_relative '../../f_classes/things/f_associations/label'
require_relative '../../f_classes/things/f_associations/genre'
require './app'

module AddMusicAlbum
  include DataSaver
  def add_music_album
    print 'Enter music genre name: '.yellow
    genre_name = gets.chomp
    puts

    date = Time.now
    formatted_time = date.strftime('%Y-%m-%d %H:%M:%S')
    publish_date = formatted_time

    print 'Is music available on spotify [Y/N]: '.yellow
    on_spotify = gets.chomp.downcase
    case on_spotify
    when 'y'
      on_spotify = true
    when 'n'
      on_spotify = false
    end
    puts

    print 'Enter label title: '.yellow
    title = gets.chomp
    puts

    print 'Enter label color: '.yellow
    color = gets.chomp
    puts

    print 'Enter Author first Name: '.yellow
    first_name = gets.chomp
    puts

    print 'Enter Author Last Name: '.yellow
    last_name = gets.chomp
    puts

    add_music_album = MusicAlbum.new(publish_date, on_spotify: on_spotify)
    @music_albums << { publish_date: add_music_album.publish_date, on_spotify: add_music_album.on_spotify }
    add_label = Label.new(title, color)
    @labels << { title: add_label.title, color: add_label.color }
    add_genre = Genre.new(genre_name)
    @genres << { genre: add_genre.name }
    add_author = Author.new(first_name, last_name)
    @authors << { first_name: add_author.first_name, last_name: add_author.last_name }
    puts 'Music Album created successfully'.green
    save_music(@music_albums)
    save_label(@labels)
    save_genre(@genres)
    save_author(@authors)
  end
end

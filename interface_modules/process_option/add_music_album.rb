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

    print 'Enter music publisher date: '.yellow
    publish_date = gets.chomp
    puts

    print 'Is music available on spotify [Y/N]: '.yellow
    spotify = gets.chomp.downcase
    case spotify
      when 'y'
        true
      when 'n'
       false
    end
    puts

    print 'Enter label title: '.yellow
    title = gets.chomp
    puts

    print 'Enter label color: '.yellow
    color = gets.chomp
    puts

    add_music_album = MusicAlbum.new(publish_date, on_spotify: spotify)
    @music_albums << { publish_date: add_music_album.publish_date, on_spotify: add_music_album.on_spotify }
    add_label = Label.new(title, color)
    @labels << { title: add_label.title, color: add_label.color }
    add_genre = Genre.new(genre_name)
    @genres << { genre: add_genre.name }
    puts 'Music Album created successfully'.green
    save_music(@music_albums)
    save_label(@labels)
    save_genre(@genres)
  end
end

require 'json'

module DataSaver
  def save_book(book)
    File.write('./f_data_json/books.json', JSON.pretty_generate(book))
  end

  def save_label(label)
    File.write('./f_data_json/labels.json', JSON.pretty_generate(label))
  end

  def save_music(music)
    File.write('./f_data_json/music_album.json', JSON.pretty_generate(music))
  end

  def save_genre(genre)
    File.write('./f_data_json/genre.json', JSON.pretty_generate(genre))
  end

  def save_game(game)
    File.write('./f_data_json/game.json', JSON.pretty_generate(game))
  end

  def save_author(author)
    File.write('./f_data_json/author.json', JSON.pretty_generate(author))
  end
end

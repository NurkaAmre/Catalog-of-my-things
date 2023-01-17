require 'json'

module DataSaver
  def save_book(book)
    File.write('./f_data_json/books.json', JSON.pretty_generate(book))
  end

  def save_label(label)
    File.write('./f_data_json/labels.json', JSON.pretty_generate(label))
  end
end

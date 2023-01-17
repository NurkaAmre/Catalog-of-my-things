require 'json'

module DataReader
  def load_books
    if File.exist?('./f_data_json/books.json')
      listbooks = File.open('./f_data_json/books.json')
      info = listbooks.read
      JSON.parse(info)
    else
      File.write('./f_data_json/books.json', [])
    end
  end

  def load_labels
    if File.exist?('./f_data_json/labels.json')
      listlabels = File.open('./f_data_json/labels.json')
      info = listlabels.read
      JSON.parse(info)
    else
      File.write('./f_data_json/labels.json', [])
    end
  end
end

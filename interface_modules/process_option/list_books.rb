require_relative '../../f_data_json/read_data'

module ListBook
  include DataReader
  def list_all_books
    @books = load_books
    if @books.empty?
      puts 'There are no books listed, please enter a book name and author'.red
    else
      @books.each_with_index do |book, index|
        puts "(#{index}) Publisher: #{book['publisher']} , Cover state: #{book['cover_state']}".blue.underline
      end
    end
  end
end

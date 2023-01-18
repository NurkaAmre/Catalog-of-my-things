module ListAuthors
  include DataReader
  def list_authors
    @authors = load_authors
    if @authors.empty?
      puts 'There are no authors listed, please enter an author name'.red
    else
      @authors.each_with_index do |author, index|
        puts "(#{index}) first_name: #{author['first_name']} , last_name: #{author['last_name']}".blue.underline
      end
    end
  end
end

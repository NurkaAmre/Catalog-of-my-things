module ListGenre
  include DataReader
  def list_genres
    @genres = load_genres
    if @genres.empty?
      puts 'There are no genres listed, please enter a genre name'.red
    else
      @genres.each_with_index do |genre, index|
        puts "(#{index}) Genre Name: #{genre['genre_name']}".blue.underline
      end
    end
  end
end

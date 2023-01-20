require_relative '../../f_data_json/read_data'

module ListGame
  include DataReader
  def list_games
    @games = load_games
    if @games.empty?
      puts 'There are no games listed, please enter a game name'.red
    else
      @games.each_with_index do |game, index|
        puts "(#{index}) Publish date: #{game['publish_date']}, Multiplayer: #{game['multiplayer']}, Last_played_at: #{game['last_played_at']}".blue.underline
      end
    end
  end
end

require_relative '../../f_data_json/read_data'

module ListMusicAlbums
  include DataReader
  def list_music_albums
    @music_albums = load_music_albums
    if @music_albums.empty?
      puts 'There are no music album'.red
    else
      @music_albums.each_with_index do |music, index|
        puts "(#{index}) Publish Date: #{music['publish_date']} , On Spotify: #{music['on_spotify']}".blue.underline
      end
    end
  end
end

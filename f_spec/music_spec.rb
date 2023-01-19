require './f_classes/item'
require './f_classes/things/music_album'
require './app'

describe MusicAlbum do
  context 'Given an instance of a musicAlbum' do
    before :each do
      @music_albums = MusicAlbum.new('02/02/2020', true)
    end

    it 'returns a new music album' do
      expect(@music_albums).to be_instance_of MusicAlbum
    end
  end
end
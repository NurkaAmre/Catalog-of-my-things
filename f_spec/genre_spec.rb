require './f_classes/item'
require './f_classes/things/f_associations/genre'
require './app'

describe Genre do
  context 'Given an instance of a genre' do
    before :each do
      @genres = Genre.new('Country')
    end

    it 'returns a new label' do
      expect(@genres).to be_instance_of Genre
    end
  end
end
require './f_classes/item'
require './f_classes/things/f_associations/genre'
require './app'

describe Label do
  context 'Given an instance of a book' do
    before :each do
      @labels = Label.new('gift', 'red')
    end

    it 'returns a new label' do
      expect(@labels).to be_instance_of Label
    end

    it 'check correct title' do
      @labels.title = 'gift'
      expect(@labels.title).to eql 'gift'
    end

    it 'check correct title' do
      @labels.color = 'red'
      expect(@labels.color).to eql 'red'
    end
  end
end
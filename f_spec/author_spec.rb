require './f_classes/item'
require './f_classes/things/f_associations/author'
require './app'

describe Author do
  context 'Given an instance of an author' do
    before :each do
      @authors = Author.new('Ikon', 'Usirusen')
    end

    it 'returns a new author' do
      expect(@authors).to be_instance_of Author
    end
  end
end

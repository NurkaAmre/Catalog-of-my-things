require './f_classes/item'
require './app'

describe Item do
  let(:item) { Item.new(Time.now) }

  describe '#initialize' do
    it 'sets the publish date' do
      expect(item.publish_date).to be_a(Time)
    end

    it 'sets the id' do
      expect(item.id).to be_a(Integer)
    end

    it 'sets the archived status' do
      expect(item.instance_variable_get(:@archived)).to be(false)
    end

    it 'initializes an empty array for genres' do
      expect(item.genres).to eq([])
    end
  end
end

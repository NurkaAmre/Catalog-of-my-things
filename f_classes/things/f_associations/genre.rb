require './item'

class Genre < Item
  attr_accessor :items, :name
  attr_reader :id

  def initialize(name)
    @id = Random.rand(1..100)
    @name = name
    @items = []
    super()
  end

  def add_item(item)
    @items << item
    item.add_genre(self)
  end
end

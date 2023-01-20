require './f_classes/item'

class Label < Item
  attr_accessor :items, :title, :color
  attr_reader :id

  def initialize(title, color)
    @id = Random.rand(1..100)
    @title = title
    @color = color
    @items = []
    super(publish_date)
  end

  def add_item(item)
    @items << item
    item.add_label(self)
  end
end

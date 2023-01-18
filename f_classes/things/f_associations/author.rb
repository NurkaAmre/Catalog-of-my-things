require './f_classes/item'

class Author < Item
  attr_accessor :first_name, :last_name
  attr_reader :id

  def initialize(first_name, last_name)
    super(publish_date)
    @id = Random.rand(1..100)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items << item
    item.add_author(self)
  end
end

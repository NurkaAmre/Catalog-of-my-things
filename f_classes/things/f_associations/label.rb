require './item'

class Label < Item
  attr_accessor :items, :title, :color
  attr_reader :id

  def initialize(title: String, color: String)
    @id = Random.rand(1..100)
    @title = title
    @color = color
    @items = []
<<<<<<< HEAD:f_classes/things/f_associations/label.rb
    super(publish_date)
=======
    super()
>>>>>>> dev:f_classes/label.rb
  end

  def add_item(item)
    @items << item
    item.add_label(self)
  end
end

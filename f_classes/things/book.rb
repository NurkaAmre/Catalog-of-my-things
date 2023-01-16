require './item'

class Book < Item
  def initialize(publisher, cover_state: string)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
    super()
  end

  def can_be_archived?
   true || @cover_state == 'bad'
  end
end

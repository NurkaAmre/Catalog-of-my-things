require './item'

class Book < Item
  def initialize(publisher, cover_state: string)
    @publisher = publisher
    @cover_state = cover_state
    super()
  end

  def can_be_archived?
    ten_years_ago = Time.now - 10.years
    @publisher < ten_years_ago
  end
end

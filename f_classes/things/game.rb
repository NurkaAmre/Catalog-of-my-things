require './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at: date)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    two_years_ago = Time.now - 2.years
    @publisher < two_years_ago
  end
end

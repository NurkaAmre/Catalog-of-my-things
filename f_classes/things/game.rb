require_relative '../item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(publish_date, multiplayer: true, last_played_at: Time.now)
    super(publish_date)
    @publish_date = publish_date
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def two_years
    two_years_ago = Time.now - 2.years
    return true if @last_played_at >= two_years_ago
  end

  def can_be_archived?
    super && two_years_ago
  end
end

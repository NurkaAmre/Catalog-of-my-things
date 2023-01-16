require './item'

class MusicAlbum < Item
  def initialize(on_spotify: true)
    super(publish_date)
    @on_spotify = on_spotify
  end
  
  private
  def can_be_archived?
    ten_years_ago = Time.now - 10.years
    @publisher < ten_years_ago
  end
end

require './item'

class MusicAlbum < Item
  def initialize(on_spotify: true)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    true || @on_spotify == true
  end
end

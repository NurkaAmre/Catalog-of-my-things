require_relative '../item'
require 'date'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(publish_date, on_spotify: true)
    super(publish_date)
    @publish_date = publish_date
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify == true
  end
end

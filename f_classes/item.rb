# my comment
class Item
  attr_accessor :publish_date, :genres, :authors, :labels, :sources
  attr_reader :id

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..100)
    @publish_date = publish_date
    @archived = archived
    @genres = []
    @authors = []
    @labels = []
    @sources = []
  end

  def move_to_archive
    self.archived = true if can_be_archived?
  end

  def add_label(label)
    @labels = label
    label.items.push(self) unless label.items.include?(self)
  end

  private

  def can_be_archived?
    ten_years_ago = Time.now - 10.years
    @published_date < ten_years_ago
  end
end

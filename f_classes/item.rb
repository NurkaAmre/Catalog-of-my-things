# frozen_string_literal: true

# my comment
class Item
  def initialize(publish_date, archived: false)
    @id = Random.rand(1..100)
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    self.archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    ten_years_ago = Time.now - 10.years
    @published_date < ten_years_ago
  end
end

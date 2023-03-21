require 'date'

class Item
  attr_accessor :genre, :author, :source, :label, :publish_date, :archived
  attr_reader :id

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = false
    @label = label
  end

  def can_be_archived?
    date = Date._parse(@publish_date)
    publish_year = Date.today.year - date[:year]
    publish_year > 10
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  def add_label(label)
    @label = label
    label.add_item(self)
  end
end

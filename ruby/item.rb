require 'date'

class Item
  attr_accessor :genre, :author, :source, :label, :publish_date, :archived
  attr_reader :id

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = false
  end

  def can_be_archived?
    date = Date._parse(@publish_date)
    publish_year = Date.today.year - date[:year]
    publish_year > 10
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  private :can_be_archived?
end

ani = Item.new('20/03/2000')
osas = Item.new('20/03/2019')

puts ani.move_to_archive

puts osas.move_to_archive

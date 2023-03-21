class Label
  attr_accessor :items, :title, :color
  attr_reader :id

  def initialize(_id, title, color)
    @id = Random.rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end
end

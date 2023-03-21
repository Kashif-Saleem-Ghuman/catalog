require_relative 'item'

class Book < Item
  def initialize(publisher, cover_state)
    super()
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived
    @publish_date > 10 || @cover_state == :bad
  end
end

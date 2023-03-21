require_relative 'item'

class Book < Item
  def initialize(publisher, cover_state)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived
    super || @cover_state == :bad ? true : false
  end
end

require 'json'

def store_books
  book_store = @books.map do |book|
    {
      name: book.name,
      publisher: book.publisher,
      cover_state: book.cover_state,
      publish_date: book.publish_date
    }
  end
  File.new('books.json', 'w') unless File.exist?('books.json')
  File.write('books.json', JSON.generate(book_store))
end

def load_books
  return unless File.exist?('books.json')

  books = JSON.parse(File.read('books.json'))
  books.each do |book|
    book = Book.new(book['name'], book['publisher'], book['cover_state'], book['publish_date'])
    @books << book
  end
end

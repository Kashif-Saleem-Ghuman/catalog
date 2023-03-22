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

def store_label
  label_store = @labels.map do |label|
    {
      name: label.title,
      color: label.color
    }
  end
  File.new('labels.json', 'w') unless File.exist?('labels.json')
  File.write('labels.json', JSON.generate(label_store))
end

def load_label
  return unless File.exist?('labels.json')

  labels = JSON.parse(File.read('labels.json'))
  labels.each do |label|
    label = Label.new(label['name'], label['color'])
    @labels << label
  end
end

def store_music_album
  music_album_store = @albums.map do |album|
    {
      publish_date: album.publish_date,
      on_spotify: album.on_spotify
    }
  end
  File.new('music_albums.json', 'w') unless File.exist?('music_albums.json')
  File.write('music_albums.json', JSON.generate(music_album_store))
end

def load_music_album
  return unless File.exist?('music_albums.json')

  albums = JSON.parse(File.read('music_albums.json'))
  albums.each do |album|
    album = MusicAlbum.new(album['publish_date'], album['on_spotify'])
    @albums << album
  end
end

def store_genre
  genre_store = @genres.map do |genre|
    {
      name: genre.name
    }
  end
  File.new('genres.json', 'w') unless File.exist?('genres.json')
  File.write('genres.json', JSON.generate(genre_store))
end

def load_genre
  return unless File.exist?('genres.json')

  genres = JSON.parse(File.read('genres.json'))
  genres.each do |genre|
    genre = Genre.new(genre['name'])
    @genres << genre
  end
end

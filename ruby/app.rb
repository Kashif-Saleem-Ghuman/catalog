require_relative './music_album'
require_relative './genre'
require_relative './book'
require_relative './label'
require_relative 'write_read'

class App
  attr_reader :albums, :genres, :books

  def initialize
    @albums = []
    @genres = []
    @books = []
    @labels = []

    load_books
  end

  def list_music_albums
    if @albums.empty?
      puts 'No music albums'
    else
      @albums.each do |album|
        puts "Publish Date: #{album.publish_date}, On Spotify: #{album.on_spotify}"
      end
    end
  end

  def list_genres
    if @genres.empty?
      puts 'No genres present'
    else
      @genres.each do |genre|
        puts "ID: #{genre.id}, Genre Name: #{genre.name}"
      end
    end
  end

  def fetch_album_details
    puts 'Publish Date: '
    date = gets.chomp
    puts 'Is it on Spotify? (true/false): '
    spotify_value = gets.chomp
    case spotify_value
    when 'true'
      on_spotify = true
    when 'false'
      on_spotify = false
    else
      puts "Invalid value detected: #{spotify_value}"
      exit
    end
    { date: date, on_spotify: on_spotify }
  end

  def add_music_album
    album_details = fetch_album_details
    each_album = MusicAlbum.new(album_details[:date], album_details[:on_spotify])
    @albums << each_album
    puts 'Album successfully added'
  end

  def list_books
    if @books.empty?
      puts 'No books present'
    else
      @books.each do |book|
        puts "Name: #{book.name}, Publisher: #{book.publisher}, Cover State: #{book.cover_state}, Publish Date: #{book.publish_date}"
      end
    end
  end

  def add_book
    puts 'Please enter the name of the book: '
    name = gets.chomp
    puts 'Please enter the name of the publisher: '
    publisher = gets.chomp
    puts 'Please enter the cover state: good/bad'
    cover_state = gets.chomp
    if cover_state != 'good' && cover_state != 'bad'
      puts 'Invalid cover state'
      return
    end
    puts 'Please enter the publish date: '
    date = gets.chomp
    puts date
    each_book = Book.new(name, publisher, cover_state, date)
    @books << each_book
    puts 'Book successfully added'
    store_books
  end

  def exit_app
    puts 'Thank you for using our application'
    exit
  end

  def list_all_labels
    if @labels.empty?
      puts 'No labels present'
    else
      @labels.each do |label|
        puts "ID: #{label.id}, Label Name: #{label.name}"
      end
    end
  end
end

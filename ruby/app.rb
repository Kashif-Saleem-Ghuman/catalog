require_relative './music_album'
require_relative './genre'

class App
  attr_reader :albums, :genres

  def initialize
    @albums = []
    @genres = []
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
    if spotify_value == 'true'
      on_spotify = true
    elsif spotify_value == 'false'
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
end

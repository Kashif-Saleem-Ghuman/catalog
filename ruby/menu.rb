class Menu
  def initialize(app)
    @app = app
  end

  puts 'Welcome to our application'
  def menu
    puts
    puts 'Please choose an option by entering a number'
    @lists = {
      1 => 'List all Albums',
      2 => 'List all Genres',
      3 => 'List all books',
      4 => 'List all Labels',
      5 => 'Create an Album',
      6 => 'Create a Book',
      7 => 'Exit'
    }
    @lists.each do |id, option|
      puts "#{id}: #{option}"
    end
    gets.chomp.to_i
  end

  def start
    loop do
      case menu
      when 1
        @app.list_music_albums
      when 2
        @app.list_genres
      when 3
        @app.list_books
      when 4
        @app.list_all_labels
      when 5
        @app.add_music_album
      when 6
        @app.add_book
      when 7
        @app.exit_app
      else
        puts 'Please choose a number between 1 and 7'
      end
    end
  end
end

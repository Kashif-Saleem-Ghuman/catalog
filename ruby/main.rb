require_relative './menu'
require_relative './app'

def main
  app = App.new
  menu = Menu.new(app)
  menu.start
end

main

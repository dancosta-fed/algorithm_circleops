require_relative 'isbn_controller'

class Router
  def initialize(isbn_controller)
    @view = IsbnView.new
    @isbn_controller = isbn_controller
  end

  def run
    route_action
  end

  private

  def route_action
    @isbn_controller.calculate_isbn
  end
end

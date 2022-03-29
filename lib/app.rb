require_relative 'isbn_controller'
require_relative 'router'

isbn_controller = IsbnController.new
router = Router.new(isbn_controller)

# starting the app
router.run

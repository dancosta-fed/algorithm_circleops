require 'rspec/autorun'
require_relative 'algorithm_controller'
require_relative 'router'

controller = Algorithm.new

router = Router.new(controller)

# starting the app
router.run

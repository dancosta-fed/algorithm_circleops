require 'rspec/autorun'
require_relative 'algorithm_controller'
require_relative 'router'

algorithm = Algorithm.new

router = Router.new(algorithm)

# starting the app
router.run

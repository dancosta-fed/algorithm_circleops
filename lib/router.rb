class Router
  def initialize(algorithm_controller)
    @algorithm_controller = algorithm_controller
    @running = true
  end

  def run
    puts 'Hey, My name is Daniel.'
    puts '== Thanks for trying this out =='
    puts '           --           '

    display_tasks
    action = gets.chomp.to_i
    print `clear`
    route_action(action)
  end

  private

  def route_action(action)
    case action
    when 1 then @algorithm_controller.numbers
    when 2 then stop
    else
      puts 'Please press 1 or 2'
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ''
    puts 'Shall we start?'
    puts '1 - Yes'
    puts '2 - Stop and exit the program'
  end
end

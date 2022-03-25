class Router
  def initialize(controller)
    @controller = controller
    @running    = true
  end

  def run
    puts 'Hey, My name is Daniel.'
    puts '== Thanks for trying this out =='
    puts '           --           '

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.numbers
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then stop
    else
      puts "Please press 1, 2, 3 or 4"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "Shall we start?"
    puts "1 - Yes"
    # puts "2 - Create a new recipe"
    # puts "3 - Destroy a recipe"
    puts "4 - Stop and exit the program"
  end
end
# frozen_string_literal: true

require_relative 'isbn_controller'

# View Class for the Algorithm
class IsbnView
  def main_question(digits)
    puts "Please give me a 12 #{digits} number"
    gets.chomp.to_i.digits.reverse
  end

  def display_final_isbn(isbn, multiplied_digits, sum_of_digits, mod_of_digits)
    puts ''
    puts "Here's your number: #{isbn}"
    sleep(0.2)
    puts ''
    puts "I've put them in an array: #{multiplied_digits}..."
    sleep(0.8)
    puts ''
    puts "Now, I'm multiplying even numbers by 1 and odd numbers by 3"
    sleep(0.4)
    puts "After adding them up, this is what I've got: #{sum_of_digits}"
    puts ''
    sleep(0.8)
    puts "Now, it's time to check the mod 10..."
    sleep(0.4)
    puts "Here it is: #{mod_of_digits}"
    puts ''
    sleep(0.8)
    puts 'And finally... Here is your isbn number:'
    puts isbn.digits.join
  end
end

# frozen_string_literal: true

require_relative 'isbn_controller'

# View Class for the Algorithm
class IsbnView
  def main_question(digits)
    puts "Please give me a 12 #{digits} number"
    gets.chomp.to_i.digits.reverse
  end

  def display_final_isbn(isbn)
    puts 'Here is your isbn number:'
    puts isbn.digits.join
  end
end

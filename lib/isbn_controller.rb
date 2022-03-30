# frozen_string_literal: true

require_relative 'isbn_view'
require_relative 'isbn'

# Calculating an Algorithm
class IsbnController
  def initialize(*)
    @view = IsbnView.new
  end

  def calculate_isbn
    digits = @view.main_question(:digits)
    isbn = Isbn.new(digits: digits)
    isbn = reset_numbers until twelve_digits?(isbn)
    multiplied_digits = multiplication(isbn)
    sum_of_digits = add(multiplied_digits)
    mod_of_digits = mod(sum_of_digits)
    final_digit = final_result(mod_of_digits)
    isbn = isbn_number(final_digit, isbn)
    @view.display_final_isbn(isbn, multiplied_digits, sum_of_digits, mod_of_digits)
  end

  # Should be PRIVATE below this line.
  # But I have to study a bit on how to call private methods on Rspec

  def twelve_digits?(isbn)
    isbn.digits.size == 12
  end

  def reset_numbers
    digits = @view.main_question(:digits)
    Isbn.new(digits: digits)
  end

  def multiplication(isbn)
    new_arr = []
    isbn.digits.each_with_index do |n, i|
      new_number = i.even? ? n * 1 : n * 3
      new_arr << new_number
    end
    new_arr
  end

  def add(multiplied_digits)
    multiplied_digits.sum
  end

  def mod(sum_of_digits)
    sum_of_digits % 10
  end

  def final_result(mod_of_digits)
    mod_of_digits == 10 ? 0 : 10 - mod_of_digits
  end

  def isbn_number(final_digit, isbn)
    isbn.digits.append(final_digit).join.to_i
  end
end

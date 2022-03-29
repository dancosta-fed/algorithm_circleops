# frozen_string_literal: true

require_relative 'isbn_view'
require_relative 'isbn_model'

# Calculating an Algorithm
class IsbnController
  def initialize(*)
    @view = IsbnView.new
    digits = @view.main_question(:digits)
    @numbers = Isbn.new(digits: digits)
  end

  # def new_values
  #   digits = @view.main_question(:digits)
  #   @numbers = Isbn.new(digits: digits)
  # end

  def twelve_digits?
    @numbers.digits.size == 12
  end

  def reset_numbers
    @numbers = @view.main_quesiton unless twelve_digits?
  end

  def multiplication
    @new_arr = []
    @numbers.digits.each_with_index do |n, i|
      new_number = i.even? ? n * 1 : n * 3
      @new_arr << new_number
    end
    @new_arr
  end

  def add
    multiplication
    result = @new_arr.sum
  end

  def mod(result)
    add
    mod = result % 10
  end

  def final_result(mod)
    mod
    if mod == 10
      final_result = 0
    else
      final_result = 10 - mod
    end
  end

  def isbn_number(final_result)
    final_result
    @isbn = @numbers.digits.append(final_result).join.to_i
    thirteen_digits?
    result
  end

  def thirteen_digits?
    @isbn.size == 13
  end

  def calculate_isbn
    new_values
    multiplication
    add
    mod
    final_result
    isbn_number
  end

  private

  def display
    p '___________________________'
    p
    p 'Here are your numbers:'
    p @numbers.to_s
  end

  def result
    p 'loading...'
    p 'Here is your ISBN:'
    p @isbn
    p '--END--'
  end
end

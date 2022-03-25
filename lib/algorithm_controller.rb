# require 'pry-byebug'
require_relative 'algorithm_view'

class Algorithm
  attr_accessor :numbers

  def initialize
    @view = View.new
    @numbers = @view.main_quesiton
    reset_numbers # conditional
    @isbn = calculate_isbn
  end

  def twelve_digits?
    @numbers.size == 12
  end

  def reset_numbers
    @numbers = @view.main_quesiton unless twelve_digits?
  end

  def multiplication
    new_arr = []
    @numbers.each_with_index do |n, i|
      new_number = i.even? ? n * 1 : n * 3
      new_arr << new_number
    end
    @new_arr = new_arr
  end

  def add
    @result = @new_arr.sum
  end

  def mod
    @mod = @result % 10
  end

  def final_result
    @final_result = if mod == 10
                      0
                    else
                      10 - mod
                    end
  end

  def isbn_number
    @result = @numbers.append(@final_result).join.to_i
    result
  end

  def calculate_isbn
    display
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
    p @numbers
  end

  def result
    p 'loading...'
    p 'Here is your ISBN:'
    p @result
    p '--END--'
  end
end

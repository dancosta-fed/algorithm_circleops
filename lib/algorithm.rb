# require 'pry-byebug'
require_relative 'algorithm_view'

class Algorithm
  attr_accessor :numbers, :new_arr, :result, :mod, :final_result, :isbn

  def initialize
    @view = View.new
    @numbers = @view.main_quesiton
    reset_numbers # conditional
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
    multiplication
    @result = @new_arr.sum
  end

  def mod
    add
    @mod = @result % 10
  end

  def final_result
    mod
    if mod == 10
      @final_result = 0
    else
      @final_result = 10 - mod
    end
  end

  def isbn_number
    final_result
    @isbn = @numbers.append(@final_result).join.to_i
    thirteen_digits?
  end

  def thirteen_digits?
    @isbn.size == 13
  end

  def calculate_isbn
    multiplication
    add
    mod
    final_result
    isbn_number
  end

  # private

  # def display
  #   p '___________________________'
  #   p
  #   p 'Here are your numbers:'
  #   p @numbers
  # end

  # def result
  #   p 'loading...'
  #   p 'Here is your ISBN:'
  #   p @result
  #   p '--END--'
  # end
end

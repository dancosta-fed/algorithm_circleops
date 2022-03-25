require_relative 'algorithm_view'
class Algorithm
  def initialize
    @view = View.new
  end

  def numbers
    @numbers = @view.main_quesiton
    display
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
    @final_result = if @mod == 10
                      0
                    else
                      10 - @mod
                    end
    @final_result
  end

  def final_number
    numbers.append(@final_result)
  end

  private

  def display
    p '___________________________'
    p ''
    p 'Here are your numbers:'
    p @numbers
    p ''
    p 'loading...'
  end
end

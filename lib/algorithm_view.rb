class View
  def main_quesiton
    puts 'Please give me a 12 digit number'
    gets.chomp.to_i.digits.reverse
  end
end

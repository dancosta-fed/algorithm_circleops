class View
  def main_quesiton
    puts 'Please give me a 12 number digit'
    gets.chomp.to_i.digits.reverse
  end
end
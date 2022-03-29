require 'spec_helper'
require File.join(File.dirname(__FILE__), '../lib/isbn_controller.rb')

RSpec.describe IsbnController do
  # Setup
  let(:controller) { IsbnController.new }
  let(:isbn1) { Isbn.new(digits: 978_014_300_723.digits.reverse) }
  let(:isbn2) { Isbn.new(digits: 978_014_300.digits.reverse) }

  describe 'ISBN number format' do
    it 'has twelve digits' do
      expect(controller.twelve_digits?(isbn1)).to be(true)
    end

    it 'Takes each digit, from left to right and multiply them alternatively by 1 and 3' do
      expect(controller.multiplication(isbn1)).to eq([9, 21, 8, 0, 1, 12, 3, 0, 0, 21, 2, 9])
    end

    it 'Sum of all those numbers' do
      multiplied_digits = controller.multiplication(isbn1)
      expect(controller.add(multiplied_digits)).to eq(86)
    end

    it 'Takes mod 10 of the summed figure' do
      sum_of_digits = controller.multiplication(isbn1).sum
      expect(controller.mod(sum_of_digits)).to eq(6)
    end

    it 'If mod is equal to 10 return 0, else return 10 - mod' do
      # Setup
      mod_of_digits = 6
      mod_of_digits == 10 ? 0 : 10 - mod_of_digits

      # testing
      expect(controller.final_result(mod_of_digits)).to eq(4)
    end

    it 'Append the final digit to the isbn number to get a final 13 digits' do
      # Setup
      final_digit = 4
      isbn = 978_014_300_723_4

      # testing
      expect(controller.isbn_number(final_digit, isbn)).to eq(isbn.digits.append(final_digit).join.to_i)
    end
  end
end

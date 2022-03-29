require 'spec_helper'
require File.join(File.dirname(__FILE__), '../lib/isbn_controller.rb')

RSpec.describe IsbnController do
  # Setup
  let(:controller) { IsbnController.new }
  let(:isbn_1) { Isbn.new(digits: 978014300723.digits) }

  describe 'ISBN number format' do
    it 'has twelve digits' do
      # Verify
      expect(controller.twelve_digits?(isbn_1)).to be(true)
    end

    it 'Takes each digit, from left to right and multiply them alternatively by 1 and 3' do
      expect(controller.multiplication(isbn_1)).to eq([9, 21, 8, 0, 1, 12, 3, 0, 0, 21, 2, 9])
    end

    it 'Sum of all those numbers' do
      multiplied_digits = controller.multiplication(isbn_1)
      # Verify
      expect(controller.add(multiplied_digits)).to eq(86)
    end

    it 'Takes mod 10 of the summed figure' do
      sum_of_digits = controller.multiplication(isbn_1).sum
      # Verify
      expect(controller.mod(sum_of_digits)).to eq(6)
    end
  end
end

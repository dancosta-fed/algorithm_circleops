require 'spec_helper'
require File.join(File.dirname(__FILE__), '../lib/isbn_controller.rb')

RSpec.describe IsbnController do
  describe 'ISBN number format' do
    it 'has twelve digits' do
      # Setup
      testing = IsbnController.new

      # Verify
      expect(testing.twelve_digits?).to be(true)
    end

    # it 'Takes each digit, from left to right and multiply them alternatively by 1 and 3' do
    #   # Setup
    #   testing = IsbnController.new

    #   # Verify
    #   expect(testing.multiplication).to eq([9, 21, 8, 0, 1, 12, 3, 0, 0, 21, 2, 9])
    # end

    it 'Sum of all those numbers' do
      # Setup
      testing = IsbnController.new

      # Verify
      expect(testing.add).to eq(86)
    end

    it 'Takes mod 10 of the summed figure' do
      # Setup
      testing = IsbnController.new

      # Verify
      expect(testing.mod).to eq(6)
    end

    it 'Subtracts 10 and if the end number is 10, make it 0. Then add result to number' do
      # Setup
      testing = IsbnController.new

      # Verify
      expect(testing.thirteen_digits?).to be(true)
    end
  end
end

require 'spec_helper'
require File.join(File.dirname(__FILE__), '../lib/algorithm_controller.rb')

RSpec.describe Algorithm do
  # let(Algorithm)

  describe 'check if @numbers' do

    let(:algorithm) { Algorithm.new }
    algo = Algorithm.new
    it 'has twelve digits' do
      expect(algorithm.twelve_digits?).to be(true)
    end

    it 'Takes each digit, from left to right and multiply them alternatively by 1 and 3' do
      expect(algorithm.multiplication).to eq([9, 21, 8, 0, 1, 12, 3, 0, 0, 21, 2, 9])
    end

    it 'Sum of all those numbers' do
      expect(algorithm.add).to eq(86)
    end

    it 'Takes mod 10 of the summed figure' do
      expect(algorithm.mod).to eq(6)
    end

    it 'Subtracts 10 and if the end number is 10, make it 0. Then add result to number' do
      expect(algorithm.final_result.size).to be(13)
    end
  end
end

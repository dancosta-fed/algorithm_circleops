require 'spec_helper'
require File.join(File.dirname(__FILE__), '../lib/algorithm_controller.rb')

RSpec.describe Algorithm do
  # let(Algorithm)

  describe 'check if @numbers' do
    algo = Algorithm.new
    it 'has twelve digits' do
      expect(algo.twelve_digits?).to be(true)
    end
  end

  describe '#multiplication' do
    it 'Takes each digit, from left to right and multiply them alternatively by 1 and 3' do
      algo = Algorithm.new
      expect(Algorithm.multiplication).to eq([9, 21, 8, 0, 1, 12, 3, 0, 0, 21, 2, 9])
    end
  end

  describe '#add' do
    it 'Sum of all those numbers' do
      algo = Algorithm.new
      expect(algo.add).to eq(86)
    end
  end

  describe '#mod' do
    it 'Takes mod 10 of the summed figure' do
      algo = Algorithm.new
      expect(algo.mod).to eq(6)
    end
  end

  describe '#final_result' do
    it 'Subtracts 10 and if the end number is 10, make it 0. Then add result to number' do
      algo = Algorithm.new
      expect(algo.final_result.size).to be(13)
    end
  end
end

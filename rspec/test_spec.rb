require 'app'
# === RSPEC TEST === #

describe Algorithm do
  describe '#numbers' do
    it 'has twelve numbers' do
      algo = Algorithm.new
      expect(algo.numbers.size).to be(12)
    end
  end

  describe '#multiplication' do
    it 'Takes each digit, from left to right and multiply them alternatively by 1 and 3' do
      algo = Algorithm.new
      expect(algo.multiplication).to eq([9, 21, 8, 0, 1, 12, 3, 0, 0, 21, 2, 9])
    end
  end

  describe '#add' do
    it 'Sum of those those numbers' do
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

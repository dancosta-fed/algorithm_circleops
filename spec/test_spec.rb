require 'app'
# === RSPEC TEST === #

RSpec.describe Algorithm do
  context 'when user selects option 1' do
    describe 'check if #numbers' do
      it 'has twelve digits' do
        algo = Algorithm.new
        expect(algo.numbers.size).to be(12)
      end
    end
  end

  context 'if there are twelve digits' do
    describe '#multiplication' do
      it 'Takes each digit, from left to right and multiply them alternatively by 1 and 3' do
        algo = Algorithm.new
        expect(algo.multiplication).to eq([9, 21, 8, 0, 1, 12, 3, 0, 0, 21, 2, 9])
      end
    end
  end

  context 'after multiplying' do
    describe '#add' do
      it 'Sum of all those numbers' do
        algo = Algorithm.new
        expect(algo.add).to eq(86)
      end
    end
  end

  context 'from the addition result' do
    describe '#mod' do
      it 'Takes mod 10 of the summed figure' do
        algo = Algorithm.new
        expect(algo.mod).to eq(6)
      end
    end
  end

  context 'with the mod 10 find the final result' do
    describe '#final_result' do
      it 'Subtracts 10 and if the end number is 10, make it 0. Then add result to number' do
        algo = Algorithm.new
        expect(algo.final_result.size).to be(13)
      end
    end
  end
end

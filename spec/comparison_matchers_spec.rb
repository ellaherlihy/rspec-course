RSpec.describe 'comparison matchers' do

    it 'allows for comparison with built in Ruby operators' do
        expect(5).to be > 3
        expect(10).to be >= 10
        expect(99).to be <= 100
    end

    describe 100 do
        it { is_expected.to be > 90 }
        it { is_expected.to be >= 80 }
        it { is_expected.to be < 101 }
    end
end
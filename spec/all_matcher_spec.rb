RSpec.describe 'all matcher' do
    it 'allows for aggregate checks' do
        expect([1, 3, 5, 7]).to all(be_odd)
        expect([[],[],[]]).to all(be_empty)
        expect([0, 0, 0]).to all(be_zero)
        expect([2, 6, 8, 9]).to all(be < 10)
    end

    describe [5, 7, 9] do
        it { is_expected.to all(be < 10) }
    end
end
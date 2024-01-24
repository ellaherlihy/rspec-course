RSpec.describe 'predicate methods and matchers' do
    it 'can be tested with Ruby methods' do
        result = 10 / 2
        expect(result.even?).to eq(false)
    end

    it 'can be test with predicate matchers' do
        expect(10/2).to be_odd #odd? => be_odd
        expect(12/2).to be_even #even? => be_even
        expect(0).to be_zero #zero? => be_zero
        expect([]).to be_empty #empty? => be_empty
    end

    describe 0 do 
        it { is_expected.to be_zero } # one line syntax
    end
end
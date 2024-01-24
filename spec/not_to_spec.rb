RSpec.describe 'not_to method' do
    it 'checks for the inverse of a matcher' do
        expect(5).not_to eq(10)
        expect(10).not_to be_odd
        expect([1, 2, 3]).not_to equal([1, 2, 3])
        expect(5).not_to respond_to(:length)
        expect { 11 / 3 }.not_to raise_error
    end
end
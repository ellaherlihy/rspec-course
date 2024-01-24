# falsy --- nil or false
# truthy --- everything else

RSpec.describe 'be matchers' do
    it 'can test for truthiness' do
        expect(4).to be_truthy
        expect("").to be_truthy
        expect(nil).not_to be_truthy
    end

    it 'can test for falsiness' do
        expect(nil).to be_falsy
        expect(false).to be_falsy
    end

    it 'can test for nil' do
        expect(nil).to be_nil

        my_hash = { a: 5 }
        expect(my_hash[:b]).to be_nil # doesn't exist, therefore == nil
    end
end
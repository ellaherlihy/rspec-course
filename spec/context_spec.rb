RSpec.describe '#even? method' do 
    describe 'with even number' do 
        it 'should return true' do
            expect(4.even?).to eq(true)
        end
    end

    context 'with odd number' do 
        it 'should return false' do
            expect(7.even?).to eq(false)
        end
    end
end
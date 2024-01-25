RSpec.describe 'equality matchers' do
    let(:a) { "hello" }
    let(:b) { "hello" }

    describe 'eq matcher' do
        it 'compares value and ignores type / class' do
            expect(a).to eq(b)
        end
    end
end
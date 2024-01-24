RSpec.describe 'equality matchers' do
    let(:a) { 3 }
    let(:b) { 3.0 }

    describe 'eq matcher' do
        it 'compares value and ignores type / class' do
            expect(a).to eq(b)
            expect(a).to eq(3.0)
        end
    end

    describe 'eql matcher' do
        it 'compares value as well as type / class' do
            expect(a).not_to eql(b)
            expect(a).not_to eql(3.0)
        end
    end

    describe 'equal and be matchers' do
        let(:c) { [1,2,3] }
        let(:d) { [1,2,3] }
        let(:e) { c }
 
        it 'cares about object identity' do
            expect(c).to equal(e)
            expect(c).to be(e)
            expect(c).not_to equal(d)
            expect(c).not_to be(d)
        end
    end
end
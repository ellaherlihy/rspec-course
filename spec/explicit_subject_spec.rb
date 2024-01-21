RSpec.describe do Hash
    subject(:hash) do
        { a: 1, b: 2 }
    end

    it 'has 2 key:value pairs' do
        expect(hash.length).to eq(2)
    end

    it 'has 2 key:value pairs' do
        expect(subject.length).to eq(2)
    end

    context 'nested example' do
        it 'has 2 key:value pairs' do
            expect(hash.length).to eq(2)
        end
    
        it 'has 2 key:value pairs' do
            expect(subject.length).to eq(2)
        end
    end
end
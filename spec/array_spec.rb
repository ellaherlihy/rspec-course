RSpec.describe Array do
    it 'should be empty' do
        expect(subject.length).to eq(0)
    end
    
    it 'should have length of 1' do
        subject.push('hello')
        expect(subject.length).to eq(1)
    end
end
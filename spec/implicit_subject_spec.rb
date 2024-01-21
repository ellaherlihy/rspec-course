RSpec.describe Hash do 
    it 'should be empty' do 
        expect(subject.length).to eq(0)
    end

    it 'should be separated between examples' do 
        expect(subject.length).to eq(0)
        subject['key'] = 'value'
        expect(subject.length).to eq(1)
    end
end
RSpec.describe Array do
    subject(:sally) do
        ["one", "two"]
    end

    it 'counts the length of the array' do
        expect(sally.length).to eq(2)
        sally.pop
        expect(sally.length).to eq(1)
    end
end

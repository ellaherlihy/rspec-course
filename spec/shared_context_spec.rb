RSpec.shared_context 'common' do
    before do
        @foods = []
    end

    def some_method
        5
    end

    let(:example_variable) { "hi" }
end

RSpec.describe 'test example group' do
    include_context 'common'
    
    it 'can use outside instance variables' do
        expect(@foods.length).to eq(0)
    end

    it 'can use outside methods' do
        expect(some_method).to eq(5)
    end

    it 'can use outside let variables' do
        expect(example_variable.length).to eq(2)
    end
end
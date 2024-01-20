RSpec.describe 'before and after hooks' do
    
    before(:context) do 
        puts 'OUTER before context'
    end

    before(:example) do 
        puts 'OUTER before example'
    end

    
    it 'is a random example' do 
        expect(5*10).to eq(50)
    end

    it 'is another random example' do 
        expect(5+10).to eq(15)
    end

    context 'with condition A' do 
        before(:context) do 
            puts 'INNER before context'
        end

        before(:example) do 
            puts 'INNER before example'
        end

        it 'it does some more basic math' do 
            expect(2*10).to eq(20)
        end
    
        it 'it does some subtraction' do 
            expect(8-3).to eq(5)
        end
    end
end


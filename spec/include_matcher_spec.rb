RSpec.describe 'include matcher' do
    describe "hot chocolate" do 
        it 'should check for substring inclusion in string' do
            expect(subject).to include("choco")
        end

        it { is_expected.to include("hot") }
    end

    describe [10, 20, 30] do 
        it 'should check for inclusion in array regardless of order' do
            expect(subject).to include(30)
        end
    end

    describe ({ a: 1, b: 2, c: 3 }) do
        it 'should check for key value pairs' do
            expect(subject).to include(a: 1)
        end
    end
end
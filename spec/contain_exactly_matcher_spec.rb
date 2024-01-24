RSpec.describe 'contain_exactly method' do
    subject { [1, 2, 3] }

    context 'long form syntax' do
        it 'should check all elements are contained' do
            expect(subject).to contain_exactly(1, 2, 3)
            expect(subject).to contain_exactly(3, 2, 1)
        end
    end    

    context 'one line syntax' do
        it { is_expected.to contain_exactly(1, 2, 3) }
        it { is_expected.to contain_exactly(3, 2, 1) }
    end
end
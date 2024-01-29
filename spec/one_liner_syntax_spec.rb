RSpec.describe 'one-liner syntax' do
    subject { 5 }

    context 'with classic syntax' do
        it 'expect to equal 5' do
            expect(subject).to eq(5)
        end
    end

    context 'with one-liner syntax' do
        it { is_expected.to eq(5) }
    end
end

# change made to the one_liner file
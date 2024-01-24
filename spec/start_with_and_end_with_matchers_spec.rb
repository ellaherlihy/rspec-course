RSpec.describe 'start_with and end_with matchers' do
    describe 'caterpillar' do
        it 'should check for sub-string at the beginning or end' do
            expect(subject).to start_with('cat')
            expect(subject).to end_with('ar')
        end

        it { is_expected.to start_with('cat') }
        it { is_expected.to end_with('ar') }
    end

    describe [:a, :b, :c, :d] do
        it 'should check for elements at start and end of array' do
            expect(subject).to start_with(:a, :b, :c)
            expect(subject).to end_with(:c, :d)
        end

        it { is_expected.to end_with(:c, :d) }
    end
end

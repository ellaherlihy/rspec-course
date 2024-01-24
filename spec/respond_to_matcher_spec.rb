class HotChocolate

    def purchase(number)
        "I bought #{number} hot chocolates"
    end

    def discard
        "PLOP!"
    end

    def delicious
        "Yum!"
    end
end

RSpec.describe 'respond_to matcher' do
    describe HotChocolate do
        it 'confirms what methods an object responds to' do
            expect(subject).to respond_to(:discard)
            expect(subject).to respond_to(:discard, :delicious, :purchase)
        end

        it 'confirms an object accepts a method with arguments' do
            expect(subject).to respond_to(:purchase).with(1).arguments
        end

        it { is_expected.to respond_to(:purchase).with(1).arguments }
    end
end
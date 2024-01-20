class Card
    attr_accessor :suit, :value

    def initialize(options = {})
        @suit = options[:suit]
        @value = options[:value]
    end
end

RSpec.describe 'Card' do
    let(:card) { Card.new(suit: 'Ace', value: 'Spades') }

    it "has a suit" do
        expect(card.suit).to eq('Ace')
    end

    it "has a value" do
        expect(card.value).to eq('Spades')
    end

    it "can change value" do
        card.value = 'Clubs'
        expect(card.value).to eq('Clubs')
    end
end


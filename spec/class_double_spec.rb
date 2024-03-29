class Deck 
    def self.build
    end
end

class CardGame
    attr_reader :cards

    def start
        @cards = Deck.build
    end
end

RSpec.describe CardGame do
    it 'can only implement class methods that are defined on a class' do
        deck_klass = class_double(Deck, build: ["Ace", "Queen"]).as_stubbed_const

        subject.start

        expect(subject.cards).to eq(["Ace", "Queen"])
    end
end
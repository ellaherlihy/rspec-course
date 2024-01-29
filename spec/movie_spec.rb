class Actor

    def initialize(name)
        @name = name
    end

    def ready?
        sleep(3)
        true
    end

    def fall_off_ladder
        "Call my agent"
    end

    def stunts
        "No way!"
    end

end

class Movie
    attr_reader :actor

    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            actor.fall_off_ladder
            actor.stunts
            actor.fall_off_ladder
        end
    end
end

# actor = Actor.new("Brad Pitt")
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do 
    let(:stuntman) { double("Mr. Danger", ready?: true, fall_off_ladder: "cool", stunts: "that's me") }
    subject { described_class.new(stuntman) }

    describe "#start_shooting method" do
        it "should expects an actor to do 3 actions" do
            # expect(stuntman).to receive(:ready?)
            # expect(stuntman).to receive(:fall_off_ladder)
            # expect(stuntman).to receive(:stunts)

            expect(stuntman).to receive(:fall_off_ladder).at_least(2).times
            expect(stuntman).to receive(:ready?).once
            # expect(stuntman).to receive(:stunts).at_most(1).times
            expect(stuntman).to receive(:stunts).exactly(1).times

            subject.start_shooting
        end
    end
end 
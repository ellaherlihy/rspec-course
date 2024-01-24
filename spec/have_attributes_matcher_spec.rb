class ProWrestler
    attr_reader :name, :signature_move

    def initialize(name, signature_move)
        @name = name
        @signature_move = signature_move
    end

end

RSpec.describe "have_attributes matcher" do
    describe ProWrestler.new("Stone Cold Steve Austin", "Stunner") do
        it 'should check if object contains an attribute' do
            expect(subject).to have_attributes(name: "Stone Cold Steve Austin")
        end

        it { is_expected.to have_attributes(name: "Stone Cold Steve Austin", signature_move: "Stunner") }
    end
end
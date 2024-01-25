class Royal 
    attr_reader :name

    def initialize(name)
        @name = name
    end
end

RSpec.describe Royal do
    subject { described_class.new('Charles') }
    let(:queen) { described_class.new('Camilla') }

    it 'has the correct name' do
        expect(subject.name).to eq('Charles')
        expect(queen.name).to eq('Camilla')
    end
end

# testing testing
# testing testing
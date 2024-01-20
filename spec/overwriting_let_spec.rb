class ProgrammingLanguage 
    attr_reader :name

    def initialize(name = 'Ruby')
        @name = name
    end
end

RSpec.describe ProgrammingLanguage do
    let(:language) { ProgrammingLanguage.new('Python') }

    it 'has Python as name' do
        expect(language.name).to eq('Python')
    end

    context 'with no argument' do
        let(:language) { ProgrammingLanguage.new }

        it 'has Ruby as name' do
            expect(language.name).to eq('Ruby')
        end
    end
end

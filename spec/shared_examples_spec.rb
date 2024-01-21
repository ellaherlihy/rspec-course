RSpec.shared_examples 'a Ruby object with 2 elements' do
    it 'shows the length of object to be 2' do
        expect(subject.length).to eq(2)
    end
end

RSpec.describe Hash do
    subject { {one: 1, two: 2} }
    include_examples 'a Ruby object with 2 elements'
end

RSpec.describe Array do
    subject { ["one", "two"] }
    include_examples 'a Ruby object with 2 elements'
end

RSpec.describe String do
    subject { "12" }
    include_examples 'a Ruby object with 2 elements'
end
RSpec.describe 25 do
    it 'can test for multiple matchers' do
        expect(subject).to be_odd.and be > 20
    end
end

RSpec.describe "caterpillar" do
    it 'can test for multiple matchers on a single line' do
        expect(subject).to start_with("cat").and end_with("lar")
    end
end

RSpec.describe [:usa, :mexico, :canada] do
    it 'can test for multiple possibilities' do
        expect(subject.sample).to eq(:usa).or eq(:mexico).or eq(:canada)
    end
end

RSpec.describe "firetruck" do
    it 'checks the start and end of a string' do
        expect(subject).to start_with("fire").and end_with("truck")
    end
end

RSpec.describe 20 do
    it 'checks subject is even and responds to time method' do
        expect(subject).to be_even.and respond_to(:times)
    end
end
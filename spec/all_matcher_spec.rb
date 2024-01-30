# RSpec.describe 'all matcher' do
#     it 'allows for aggregate checks' do
#         expect([1, 3, 5, 7]).to all(be_odd)
#         expect([[],[],[]]).to all(be_empty)
#         expect([0, 0, 0]).to all(be_zero)
#         expect([2, 6, 8, 9]).to all(be < 10)
#     end

#     describe [5, 7, 9] do
#         it { is_expected.to all(be < 10) }
#     end
# end

class SiteVisit
    attr_reader :timestamp  

    def initialize
        @timestamp = Time.now
    end
end

RSpec.describe SiteVisit do
    it 'sets timestamp to current value' do
      # Stubbing the Time.now method to return a specific time (2013-01-01)
      allow(Time).to receive(:now).and_return(Time.new(2013, 1, 1))
  
      # Creating a SiteVisit instance
      visit = SiteVisit.new
  
      # Expecting that the timestamp attribute is set to the stubbed time value
      expect(visit.timestamp).to eq(Time.new(2013, 1, 1))
    end
  end
# RSpec.describe 'equality matchers' do
#     let(:a) { "hello" }
#     let(:b) { "hello" }
#         describe 'eq matcher' do
#         it 'compares value and ignores type / class' do
#             expect(a).to eq(b)
#         end
#     end
# end

RSpec.describe 'a random double' do
    it 'only allows defined methods to be invoked' do
        # stuntman = double("Mr Danger", fall_off_ladder: "Ouch", set_on_fire: true)
        # expect(stuntman.fall_off_ladder).to eq("Ouch")
        # expect(stuntman.set_on_fire).to eq(true)

        # stuntman = double("Mr Danger")
        # allow(stuntman).to receive(:fall_off_ladder).and_return("Ouch")

        stuntman = double("Mr Danger")
        allow(stuntman).to receive_messages(fall_off_ladder: "Ouch", set_on_fire: true)
        expect(stuntman.fall_off_ladder).to eq("Ouch")
        expect(stuntman.set_on_fire).to eq(true)
    end
end
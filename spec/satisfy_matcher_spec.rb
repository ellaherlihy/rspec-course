RSpec.describe 'satisfy matcher' do
    describe 'racecar' do
        it 'should check if string is a palindrome' do
            expect(subject).to satisfy { |value| value == value.reverse }
        end

        it 'can accept a custom error message' do
            expect(subject).to satisfy('be a palindrome') do |value| 
                value == value.reverse 
            end
        end
    end
end
RSpec.describe 'allow method review' do
    it 'can customise return value for methods on doubles' do 
        calculator = double
        allow(calculator).to receive(:add).and_return(15)

        expect(calculator.add(3 * 10)).to eq(15)
        expect(calculator.add(100 - 99)).to eq(15)
    end

    it 'can stub one or more methods on a real object' do
        arr = [1, 2, 3]
        allow(arr).to receive(:sum).and_return(15)
        expect(arr.sum).to eq(15)

        arr.push(4)
        expect(arr).to eq([1, 2, 3, 4])
    end

    it 'can return multiple return values in sequence' do
        mock_array = double
        allow(mock_array).to receive(:pop).and_return(:c, :b, :nil)
        expect(mock_array.pop).to eq(:c)
        expect(mock_array.pop).to eq(:b)
        expect(mock_array.pop).to eq(:nil)
    end
end
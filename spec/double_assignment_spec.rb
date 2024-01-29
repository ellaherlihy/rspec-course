db = double("Database Connection", connect: true, disconnect: "Goodbye")
it 'the method connect should return true' do
    expect(db.connect).to eq(true)
end

it 'the method disconnect should return "Goodbye"' do
    expect(db.disconnect).to eq("Goodbye")
end

fs = double("File System")
allow(fs).to receive_messages(read: "Romeo and Juliet", write: false)

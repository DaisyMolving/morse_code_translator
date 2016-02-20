require_relative './morse_code'
describe MorseCode do

  it 'should take a string input' do
	 morse = MorseCode.new
	 result = morse.input("hello")
	 expect(result).to eq true
  end
end

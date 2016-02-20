require_relative './morse_code'
describe MorseCode do

  it 'should take a string input' do
	 morse = MorseCode.new
	 result = morse.input_check("hello")
	 expect(result).to eq true
  end

  it 'should not take an integer input' do
	 morse = MorseCode.new
	 result = morse.input_check(6)
	 expect(result).to eq false
  end
end

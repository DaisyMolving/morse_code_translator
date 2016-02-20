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
  
  it 'should split a string input into letters and return them in an array' do
	 morse = MorseCode.new
	 result = morse.split_input("hello")
	 expect(result).to eq %w(h e l l o)
  end
end

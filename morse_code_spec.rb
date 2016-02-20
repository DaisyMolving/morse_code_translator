require_relative './morse_code'
describe MorseCode do

  it 'should take "go here" and return "--./---/ /...././.-./."' do
	 morse = MorseCode.new
	 result = morse.words_translated("go here")
	 expect(result).to eq "--./---/ /...././.-./."
  end

  it 'should take "--./---/ /...././.-./." and return "go here"' do
	 morse = MorseCode.new
	 result = morse.morse_translated("--./---/ /...././.-./.")
	 expect(result).to eq "go here"
  end

end


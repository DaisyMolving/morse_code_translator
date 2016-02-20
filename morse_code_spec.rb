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

  it 'should take "good" and return it as %w(g o o d)' do
	 morse = MorseCode.new
	 result = morse.split_input("good")
	 expect(result).to eq %w(g o o d)
  end

  it 'should take "hi" and return ["....", ".."]' do
	 morse = MorseCode.new
	 result = morse.letters_to_morse("hi")
	 expect(result).to eq %w(.... ..)
  end

  it 'should take "go" and return ["--.", "---"]' do
	 morse = MorseCode.new
	 result = morse.letters_to_morse("go")
	 expect(result).to eq ["--.", "---"]
  end

  it 'should take "go" and return "--./---"' do
	 morse = MorseCode.new
	 result = morse.words_translated("go")
	 expect(result).to eq "--./---"
  end

  it 'should take "go here" and return "--./---/ /...././.-./."' do
	 morse = MorseCode.new
	 result = morse.words_translated("go here")
	 expect(result).to eq "--./---/ /...././.-./."
  end
end


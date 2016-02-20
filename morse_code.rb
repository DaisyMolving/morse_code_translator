class MorseCode

  def input_check(input)
	 if input.is_a? String
		true
	 else
		false
	 end
  end

  def split_input(input)
	 string = input_check(input)
	 if string 
		letters = input.split("")
	 else
		puts "please input a string!"
	 end
	 letters
  end

  def letters_to_morse(input)
	 morse_dots = []
	 morse_pairs = {"a" => ".-", "b" => "-..." , "c" => "-.-.", "d" => "-..", "e" => ".", "f" => "..-.", "g" => "--.", "h" => "....", "i" => "..", "j" => ".---", "k" => "-.-", "l" => ".-..", "m" => "--", "n" => "-.", "o" => "---", "p" => ".--.", "q" => "--.-", "r" => ".-.", "s" => "...", "t" => "-", "u" => "..-", "v" => "...-", "w" => ".--", "x" => "-..-", "y" => "-.--", "z" => "--.."}

	 letters = split_input(input)
	 print letters
	 letters.each do |letter|
		morse_pairs.each do |alpha, dots|
		  if letter == alpha
			 letter = morse_pairs[alpha]
		  end
		end
		morse_dots << letter
	 end
	 morse_dots
  end

  def words_translated(input)
	 morse_dots = letters_to_morse(input)
	 morse_word = morse_dots.join("/")
	 morse_word
  end

end

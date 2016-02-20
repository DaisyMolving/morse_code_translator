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
	 %w(.... ..)
  end

end

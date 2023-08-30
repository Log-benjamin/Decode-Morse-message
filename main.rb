MORSE_DICT = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(char)
  MORSE_DICT[char]
end

def decode_word(morseCode)
    temp_store = morseCode.split
    word_decode = ""
    temp_store.each do |elem|
        word_decode += MORSE_DICT[elem]
    end
    word_decode
end

# def decode_message(message)
#     ben = ""
#     @words = message.split('   ')
#     @words.each do |word|
#         ben += decode_word(word)
#     end
#     ben 
# end

# decode_message("-- -.--   -. .- -- .")
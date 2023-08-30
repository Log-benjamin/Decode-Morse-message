MORSE_DICT = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(char)
  MORSE_DICT[char]
end

def decode_word(morsecode)
  temp_store = morsecode.split
  word_decode = ''
  temp_store.each do |elem|
    word_decode += MORSE_DICT[elem]
  end
  print("#{word_decode} ")
end

def decode_message(message)
  words = message.split('   ')
  words.each do |word|
    decode_word(word)
  end
  print("\n")
end

# decode_message("-- -.--   -. .- -- .")

# decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

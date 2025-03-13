# require 'pry'
# Create a method to decode a Morse code character, takes a string parameter, and return the corresponding character in uppercase (e.g. decode_char(".-") returns "A").
def decode_char(char)
  morse_code = {
    '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e',
    '..-.' => 'f', '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j',
    '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n', '---' => 'o',
    '.--.' => 'p', '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' => 't',
    '..-' => 'u', '...-' => 'v', '.--' => 'w', '-..-' => 'x', '-.--' => 'y',
    '--..' => 'z'
  }
  # morse_code[char] will return the value of the key char, eg
  # morse_code['.-'] will return 'a' and upcase will make it 'A'
  morse_code[char].upcase
end
# 
def decode_word(char)
  new_array = char.split
  empty_string = ''
  new_array.each do |i|
    empty_string += decode_char(i)
  end
  empty_string
end

p decode_char(".-")
p decode_word('-- -.--')
p decode_word('-.- .- -... .- .-. . . -... .')

# binding.pry

def decode(char)
  new_array = char.split('  ')
  new_string = ''
  new_array.each do |i|
    new_string << "#{decode_word(i)} "
  end
  new_string
end

p decode('-- -.--  -. .- -- .')
p decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

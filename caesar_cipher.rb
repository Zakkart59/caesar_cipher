def caesar_cipher(string, shift)
  result = ""

  string.each_char do |char|
    if char.match(/[a-zA-Z]/)
      ascii_offset = char.match(/[a-z]/) ? 97 : 65
      shifted_char = (((char.ord - ascii_offset) + shift) % 26) + ascii_offset
      result += shifted_char.chr
    else
      result += char
    end
  end

  result
end

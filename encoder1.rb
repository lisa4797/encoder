

def encode(text, n)
	alphabet = Array("a".."z")
	encoder = Hash[alphabet.zip(alphabet.rotate(n))]
	result = text.chars.map {|c| encoder.fetch(c, "")}
	return result
end


def decode(text, n)
	alphabet = Array("a".."z")
	encoder = Hash[alphabet.zip(alphabet.rotate(-n))]
	result = text.chars.map {|c| encoder.fetch(c, "")}
	return result
end



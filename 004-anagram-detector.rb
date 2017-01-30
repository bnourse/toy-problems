
def isAnagram(input)
	string1 = input[0]
	string2 = input[1]

	chars1 = getOrderedCharArray(string1)
	chars2 = getOrderedCharArray(string2)

	return chars1 == chars2
end

def getOrderedCharArray(s)
	return s.downcase.scan(/\w/).sort!
end

def detectDuplicateWords(s1, s2)
	wordList s1 = s1.downcase.split(" ").sort	wordList s2 = s2.downcase.split(" ").sort

end

testInput1 = ["wisdom", "mid sow"]
testInput2 = ["Seth Rogan", "Gathers No"]
testInput3 = ["Reddit", "Eat Dirt"]
testInput4 = ["Schoolmaster", "The classroom"]
testInput5 = ["Astronomers", "Moon starer"]
testInput6 = ["Vacation Times", "I'm Not as Active"]


puts isAnagram(testInput1)
puts isAnagram(testInput2)
puts isAnagram(testInput3)
puts isAnagram(testInput4)
puts isAnagram(testInput5)
puts isAnagram(testInput6)

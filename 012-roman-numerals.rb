test1 = 363
test2 = 364

def romanize(num) 
	mCount = (num / 1000).floor
	num = num % 1000
	dCount = (num / 500).floor
	num = num % 500
	cCount = (num / 100).floor
	num = num % 100
	lCount = (num / 50).floor
	num = num % 50
	xCount = (num / 10).floor
	num = num % 10
	vCount = (num / 5).floor
	num = num % 5
	iCount = num

	#handle IV
	ivCount = 0
	if iCount == 4
		iCount = 0
		ivCount = 1
	end

	#handle CM

	puts "M" * mCount + "D" * dCount + "C" * cCount + "L" * lCount + "X" * xCount + ("IV" * ivCount) + "V" * vCount + "I" * iCount
end

romanize(test1)
romanize(test2)




# Symbol	I	V	X	L	C	D	M
# Value		1	5	10	50	100	500	1,000


# Number	4	9	40	90	400	900
# Notation	IV	IX	XL	XC	CD	CM


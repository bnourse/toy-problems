function buildDay(dayCount) {

	var dayWords = ["zeroth", "first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
	var dayText = ["", "a Partridge in a Pear Tree", "Two Turtle Doves", "Three French Hens", "Four Calling Birds", "five Golden Rings", "six Geese a Laying","seven Swans a Swimming","eight Maids a Milking","nine Ladies Dancing", "ten Lords a Leaping","elevn Pipers Piping","twelve Drummers Drumming"];
	console.log("On the " + dayWords[dayCount] + " day of Christmas\nmy true love sent to me: ")
	for(var day=dayCount; day >= 1; day--) {
		if(dayCount > 1 && day == 1) {
			console.log("and " + dayText[day]);
		}
		else console.log(dayText[day]);
	}

}

for(var day = 1; day <= 12; day++) {
	buildDay(day);
	console.log("\n");
}

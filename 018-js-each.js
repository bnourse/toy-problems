

function each(array, fun) {
	for(i = 0; i < array.length; i++) {
		fun(array[i]);
	}
}


names = ["Sumeet", "Beth", "Dan", "Mindy"];

each(names, function(n){
    console.log("Isn't " + n + " just great?");
});

each(names, function(n){
	console.log(names[i].length);
});
function dise(input) {
    return input.replace(/[aeiou\s]/g,"");
}



var testInput1 = "two drums and a cymbal fall off a cliff";
var result1    = dise(testInput1);

var testInput2 = "bah dum ching";
var result2 = dise(testInput2);

if (result1 === "twdrmsndcymblfllffclff") {
    console.log("Test #1 Passed!");
}
else {
    console.log("Test #1 Failed!");
    console.log("Tried with two drums and a cymbal fall off a cliff");
    console.log("Expected to get: twdrmsndcymblfllffclff");
    console.log("Instead, got: " + result1);
}

if (result2 === "bhdmchng") {
    console.log("Test #2 Passed!");
}
else {
    console.log("Test #2 Failed!");
    console.log("bah dum ching");
    console.log("Expected to get: bhdmchng");
    console.log("Instead, got: " + result2);
}
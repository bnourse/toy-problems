function dieRoller(diceNotation) {
    var countAndType = diceNotation.split("d");
    var count = countAndType[0];
    var type = countAndType[1];
    var results = [];
    
    for(var i = 0; i < count; i++) {
        results.push(rollType(type));
    }
    
    return results;
}

function rollType(sides) {
    return Math.floor(Math.random() * sides) + 1;
}

console.log(dieRoller("10d10"));
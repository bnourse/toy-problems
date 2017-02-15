window.addEventListener("load", function (){

	var aTags = document.getElementsByTagName("a");

	var count = 0;
	var questionCount = 0;

	for (i = 0; i < aTags.length; i++) {
		if (aTags[i].textContent == "CORDELIA") {
			count += 1 ;
			questionCount += detectQuestions(aTags[i]);
		}
	} 

	// alert("Cordelia spoke: " + count + " times.");
	alert("Cordelia asked: " + questionCount + " questions.");

});

function detectQuestions(node) {
	var blockQuote = node.nextSibling.nextSibling;
	var text = blockQuote.textContent;
	var count = text.split("?").length - 1;
		debugger;
	return count;

}
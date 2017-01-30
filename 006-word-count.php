
<?php

$input_string = "It is rather for us, the living, we here be dedicated to the great task remaining before us.";

function clean_array($string) {
	$clean_string = preg_replace('/[,.]/', '', $string);
	$clean_array = preg_split('/\s/', $clean_string);
	return $clean_array;
}

function word_hash($from_array) {
	for ($i = 0; $i < sizeof($from_array)-1; $i++) {
		
	}
}

$word_array = clean_array($input_string);

echo $word_array;

?>
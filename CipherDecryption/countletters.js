var fs = require('fs');

fs.readFile('cyphertext.txt', function(err, data){
	if(err) throw err;
	var str = data.toString().trim();
	for(var j = 0; j < 26; j++)
	{
	console.log(caesarShift(str));
	}
});

var countLetter = function(str){
	var output = new Array[26];

	for(var i = 0; i < str.length; i++){
		var c = str[i];
		if(c.match(/[a-z]/i)){
			
		}
	}
	return output;
}
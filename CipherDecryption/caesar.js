var fs = require('fs');

fs.readFile('cyphertext.txt', function(err, data){
	if(err) throw err;
	var str = data.toString().trim();
	for(var j = 0; j < 26; j++)
	{
	console.log(caesarShift(str, j));
	}
});

var caesarShift = function(str, amount){

	if(amount < 0)
			return caesarShift(str, ammount +26);

	var output = '';

	for(var i = 0; i < str.length; i++){
		var c = str[i];
		if(c.match(/[a-z]/i)){
			var code = str.charCodeAt(i);
			//uppercase ASCII
			c = String.fromCharCode(((code - 65 + amount) % 26) + 65);

		}
		output += c;
	}
	return output;
}
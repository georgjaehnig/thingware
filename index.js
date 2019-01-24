var fs = require('fs');
var lines = fs.readFileSync('lists/unq.2.txt').toString().split("\n");

function pick_titles(randoms) {
  
	var picked_lines = [];

	for (random of randoms) {
	  picked_lines.push(lines[random]);
	}

  console.log('Things / Wikipedia articles to remember:')
  console.log('');
  
  var password = '';
  for (line of picked_lines) {
    var parts = line.split(" ");
  	console.log("\thttps://en.wikipedia.org/wiki/" + parts[1] + "_" + parts[2]);
    password += parts[0].toLowerCase(); 
  }
  console.log('');
  console.log('Your password, based on the first and last letters of every word:')
  console.log('');
  console.log("\t" + password);
  console.log('');
  console.log('Blind entropy: ' +  Math.log2(26).toFixed() * password.length + ' bits (' + password.length +' lowercase chars)');
  console.log('Seen entropy:  ' +  Math.log2(lines.length).toFixed() * randoms.length + ' bits (' + randoms.length + ' article titles out of ' + lines.length + ')');
  console.log('');
  console.log('Feel free to write out one or several words, to increase the length and thus the blind entropy.')
	// Todo: create these written out variations.
}


function main() {
  
  var args = process.argv.slice(2);
  
	// Check if arguments are there.
  if (args.length < 3) {
    console.log("Usage: node index.js random_number1 random_number2 random_number3 [random_number4..]");
    console.log("The random numbers must be between 1 and " + lines.length + ".");
    console.log("You can generate them with Google: https://www.google.com/search?q=random%20number%20between%200%20and%20" + lines.length + " &ie=utf-8");
		return;
  }

	// Create the passphrase.
	pick_titles(args);
}

main();

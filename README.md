# Thingware

Inspired by [Diceware](https://en.wikipedia.org/wiki/Diceware), Thingware tries to create easy-memorable yet fairly secure passwords. Instead of 5 random words, Thingware gives you **3 Wikipedia article titles** (or more, if you want).

Of these titles, the first and last letters of every word are used to create the password, thus getting to a length of 12 characters.

The idea behind this approach:

- The number of chars to type is minimized: For a 5-word Diceware phrase, you need to type around 30 chars – for a thingware phrase with similar seen entropy only 12 chars.
- Remember only 3 instead of 5 terms.
- You not only get some random words to remember but actual things/concepts with a Wikipedia article (Yes, you should read the article, to better remember the term). You can look up this article later in case you got unsure about the spelling.

## Usage

Call the script with 3 (or more) random numbers. (Generate them e.g. with [Google](https://www.google.com/search?q=random%20number%20between%200%20and%20212686).)

    $ node index.js 191498 15112 12009

Or more, if you want:

    $ node index.js 191498 15112 12009 34435

## Example output

    Things / Wikipedia articles to remember:
    
    	https://en.wikipedia.org/wiki/Valu_Thimmapuram
    	https://en.wikipedia.org/wiki/Bani_Uqayl
    	https://en.wikipedia.org/wiki/Bob_Irsay
    
    Your password, based on the first and last letters of every word:
    
    	vutmbiulbbiy
    
    Blind entropy: 60 bits (12 lowercase chars out of 26)
    Seen entropy:  54 bits (3 article titles out 212686)
    
    Feel free to write out one or several words, to increase the length and thus the blind entropy.

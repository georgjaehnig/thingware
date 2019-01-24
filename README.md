# Thingware

Inspired by [Diceware](https://en.wikipedia.org/wiki/Diceware), Thingware tries to create easy-memorable yet fairly secure passwords. Instead of 5 random words, Thingware gives you **3 Wikipedia article titles**.

## Usage

Call the script with 3 random numbers. (Generate them e.g. with [Google](https://www.google.com/search?q=random%20number%20between%200%20and%20212686).)

    $ node index.js 191498 15112 12009

## Example output

    Things / Wikipedia articles to remember:
    
    	https://en.wikipedia.org/wiki/Valu_Thimmapuram
    	https://en.wikipedia.org/wiki/Bani_Uqayl
    	https://en.wikipedia.org/wiki/Bob_Irsay
    
    Your password, based on the first and last letters of every word:
    
    	vutmbiulbbiy
    
    Blind entropy: 56 bits (12 lowercase chars)
    Seen entropy:  53 bits (3 article titles out 212686)
    
    Feel free to write out one or several words, to increase the length and thus the blind entropy.

"use strict"

module.exports = class Anagram
  constructor: (@input) ->
    @processedInput = sortCharacters @input.toLowerCase()

  match: (guesses) ->
    guesses
      .map((guess) -> guess.toLowerCase())
      .filter (guess) =>
        guess isnt @input and @processedInput is sortCharacters guess

sortCharacters = (str) -> str.split('').sort().join('')

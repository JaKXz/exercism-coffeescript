module.exports = class Bob
  hey: (input) ->
    if isShouting input
      "Whoa, chill out!"
    else if isQuestion input
      "Sure."
    else if isEmpty input
      "Fine. Be that way!"
    else
      "Whatever."

isShouting = (input) ->
  input.toUpperCase() is input and input.toLowerCase() isnt input

isQuestion = (input) -> input.slice(-1) is "?"

isEmpty = (input) -> input.trim() is ""

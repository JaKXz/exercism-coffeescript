module.exports = class Luhn
  constructor: (input) ->
    @checkDigit = input % 10
    _inputDigits = toArray input
    @addends = _inputDigits
      # reverse to get the indeces counted correctly, and reduceRight
      # to get the values pushed into the result correctly
      .reverse()
      .reduceRight ((result, value, index) ->
        if index % 2 isnt 0
          value *= 2
          result.push if value >= 10 then value - 9 else value
        else
          result.push value
        result
      ), []

    @checksum = @addends.reduce toSum, 0
    @valid = @checksum < _inputDigits.reduce toSum, 0

toArray = (num) -> num.toString().split('').map (n) -> +n
toSum = (result, val) -> result + val

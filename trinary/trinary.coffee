module.exports = class Trinary
  constructor: (input) ->
    @input = input.split ''
    @isNotTrinary = @input.some (char) -> /[^0-2]/.test char
    @default = 0

  toDecimal: ->
    if @isNotTrinary
      @default
    else
      bits = @input.length - 1
      @input
        .map((i) -> +i)
        .reduce ((result, element) ->
          result += element * (3 ** bits)
          bits -= 1
          result
        ), @default

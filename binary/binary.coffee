module.exports = class Binary
  constructor: (input) ->
    @input = input.split ''
    @isNotBinary = @input.some (char) -> /[^0-1]/.test char
    @default = 0

  toDecimal: ->
    if @isNotBinary
      @default
    else
      bits = @input.length - 1
      @input
        .map((i) -> +i)
        .reduce ((result, element) ->
          result += element * (2 ** bits)
          bits -= 1
          result
        ), @default

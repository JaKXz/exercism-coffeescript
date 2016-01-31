"use strict"

module.exports = class Hexadecimal
  constructor: (input) ->
    @input = input.split ''
    @isNotHex = @input.some (char) -> /[g-z]/.test char
    @default = 0

  toDecimal: ->
    if @isNotHex
      @default
    else
      bits = @input.length - 1
      @input
        .map((char) -> if isNaN char then hexMap[char] else +char)
        .reduce ((result, element) ->
          result += element * (16 ** bits)
          bits -= 1
          result
        ), @default

hexMap =
  a: 10
  b: 11
  c: 12
  d: 13
  e: 14
  f: 15

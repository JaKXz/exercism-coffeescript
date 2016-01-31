"use strict"

module.exports =
  defaultVal: 0
  isValidCheck: (input, regex) -> input.some (val) -> regex.test val
  reducer: (base, bits) ->
    (result, element) ->
      result += element * base ** bits
      bits -= 1
      result

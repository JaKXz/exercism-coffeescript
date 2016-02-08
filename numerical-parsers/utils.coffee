"use strict"

module.exports =
  defaultVal: 0
  isValidCheck: (input, regex) -> input.some (val) -> regex.test val
  reducer: (base, bit) ->
    (result, element) ->
      result += element * base ** bit
      bit -= 1
      result

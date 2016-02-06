"use strict"

utils = require "../numerical-parsers/utils"

module.exports = class Trinary
  constructor: (input) ->
    @input = input.split ''
    @isNotTrinary = utils.isValidCheck @input, /[^0-2]/

  toDecimal: ->
    if @isNotTrinary
      utils.defaultVal
    else
      @input.map((i) -> +i).reduce utils.reducer(3, @input.length - 1), 0

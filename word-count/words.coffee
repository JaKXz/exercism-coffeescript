"use strict"

module.exports = class Words
  constructor: (@input) ->

  count: ->
    @input
      .toLowerCase()
      .replace(/\W/g, ' ')
      .trim()
      .split(/\s+/g)
      .reduce ((wordCounts, word) ->
        wordCounts[word]++ || wordCounts[word] = 1
        wordCounts
      ), {}

module.exports = class Words
  constructor: (@input) ->

  count: ->
    @input
      .toLowerCase()
      .replace(/\W/g, ' ')
      .trim()
      .split(/\s+/g)
      .reduce ((words, word) ->
        words[word]++ || words[word] = 1
        words
      ), {}

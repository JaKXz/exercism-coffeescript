"use strict"

Array::accumulate = (operation) ->
  result = []
  result[i] = operation element for element, i in this
  result

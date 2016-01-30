Array::accumulate = (fn) ->
  result = []
  @forEach (elem) -> result.push fn elem
  result

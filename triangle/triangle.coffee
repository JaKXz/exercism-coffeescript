"use strict"

module.exports = class Triangle
  constructor: (@a, @b, @c) ->
    if [@a, @b, @c].some isNegative
      throw new Error("negative sides are illegal")
    else if !triangleInequalityCheck @a, @b, @c
      throw new Error("violation of triangle inequality")

  kind: ->
    if @a is @b is @c
      "equilateral"
    else if @b is @c or @a is @c or @a is @b
      "isosceles"
    else
      "scalene"

isNegative = (val) -> val < 0
triangleInequalityCheck = (a, b, c) ->
  z = Math.max a, b, c
  a + b > z and a + c > z and b + c > z

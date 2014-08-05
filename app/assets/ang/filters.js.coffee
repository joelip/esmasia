app = angular.module('esmTestFilters', [])

app.filter 'initial', ->
  (input) ->
    input.substring(0,1)

app.filter 'cents', ->
  (cost) ->
    cost.toString()
    "$" + cost.substring(0,3)
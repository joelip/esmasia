app = angular.module('esmTestFilters', [])

app.filter 'initial', ->
  (input) ->
    input.substring(0,1)
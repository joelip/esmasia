app = angular.module('sampleModels', ['ngResource', 'ngCookies'])

app.factory 'CurrentUser', ['$http', '$cookies', ($http, $cookies) ->
	wrapper = {
		get: ->
			$http.get('/current_user')
	}
]

app.factory 'User', ['$resource', ($resource) ->
	$resource('/api/users/:id', {id: '@id'}, {update: {method: 'PUT'}})
]
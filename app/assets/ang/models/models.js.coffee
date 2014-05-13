app = angular.module('esmTestModels', ['ngResource', 'ngCookies', 'paymentModels'])

app.factory 'CurrentUser', ['$http', '$cookies', ($http, $cookies) ->
	wrapper = {
		get: ->
			$http.get('/current_user')
	}
]

app.factory 'User', ['$resource', ($resource) ->
	$resource('/api/users/:id', {id: '@id'}, {update: {method: 'PUT'}})
]

app.factory 'Enrollment', ['$rootScope', '$http', '$window', ($rootScope, $http, $window) ->
	wrapper = {

		createEnrollment: (enrollment) ->

			$http.post('/create_enrollment', enrollment)
				.success ->
					$window.location.href = '/classes/payment'
				.error ->
					alert "There was an error saving your enrollment. Recheck your entries, and 
					refresh the page if needed."
		
	}
]
app = angular.module('paymentModels', [])

app.factory 'Stripe', ['$http', '$rootScope', '$timeout', ($http, $rootScope, $timeout) ->

	wrapper = {

		fauxPayment: ->
			$timeout( ->
				$rootScope.$broadcast('success'), 1500)
		,
		createPayment: (customer) ->
			
			# define response handler for stripe
			stripeResponseHandler(status, response) ->
				if response.error

					# if error contacting Stripe
					$rootScope.$broadcast('paymentError')

				else

					# assign token to object being POSTed
					token = response['id']

					alert token
					# send token to server
					# $http.post('/create_payment', {stripe_token: token})

			Stripe.card.createToken(customer, stripeResponseHandler)

	}

]
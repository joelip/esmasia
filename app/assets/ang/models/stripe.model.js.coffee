app = angular.module('paymentModels', [])

app.factory 'StripeCard', ['$http', '$rootScope', '$timeout', ($http, $rootScope, $timeout) ->

	wrapper = {

		createPayment: (customer, date) ->
			# define response handler for stripe
			stripeResponseHandler = (status, response) ->
				if response.error
					# if error contacting Stripe
					$rootScope.$broadcast('paymentError')

				else
					# assign token to object being POSTed
					token = response['id']
					# send token to server
					$http.post('/create_payment', {stripe_token: token, email: customer.email})
						.success ->
							$timeout($rootScope.$broadcast('successfulPayment'), 2000)
						.error ->
							$rootScope.$broadcast('paymentError')

			Stripe.card.createToken({
				number: customer.card,
				cvc: customer.cvc,
				exp_month: date.month,
				exp_year: date.year
			}, stripeResponseHandler)

	}

]
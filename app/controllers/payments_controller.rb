class PaymentsController < ApplicationController

	def create_payment

		Stripe.api_key = ENV['STRIPE_SECRET_KEY']

		charge = Stripe::Charge.create(
			amount: 49900,
			currency: 'USD',
			card: params[:stripe_token],
			description: "Payment by #{params[:email]} for ESM Summer ACT Course June 9-13"
		)

		EnrollmentMailer.payment_receipt(params[:email]).deliver if charge

		render nothing: true
	end

end
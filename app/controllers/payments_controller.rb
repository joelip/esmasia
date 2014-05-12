class PaymentsController < ApplicationController

	def create_payment

		Stripe.api_key = ENV['STRIPE_SECRET_KEY']

		# customer = Stripe::Customer.create(
  # 		email: params[:email],
  # 		card: params[:stripe_token]
		# )

		charge = Stripe::Charge.create(
			amount: 49900,
			currency: 'USD',
			card: params[:stripe_token],
			description: "Payment by #{params[:email]} for ESM Summer ACT Course June 9-13"
		)

		Rails.logger.info "#{charge}"

		render nothing: true
	end

end
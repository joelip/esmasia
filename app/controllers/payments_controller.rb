class PaymentsController < ApplicationController

	def create_payment
		Stripe.api_key = ENV['STRIPE_SECRET_KEY']
		Rails.logger.info "Referred by: #{params[:referred_by]}"

		charge = Stripe::Charge.create(
			amount: cookies[:esm_session_price],
			currency: 'USD',
			card: params[:stripe_token],
			description: "Payment by #{params[:email]} for ESM ACT Seminar 8/6/2014 to 9/3/2014"
		)
		if charge
			EnrollmentMailer.payment_receipt(params[:email]).deliver 
			AdminMailer.successful_payment(params[:email], params[:referred_by]).deliver
		end
		
		render nothing: true
	end

end
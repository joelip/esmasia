class EnrollmentController < ApplicationController

	def payment_page
		
	end

	def create_enrollment
		enrollment = Enrollment.create!(
			city: params[:city],
			state: params[:state],
			grade: params[:grade],
			dob: params[:dob],
			home_address: params[:home_address],
			parent_email: params[:parent_email],
			parent_full_name: params[:parent_full_name],
			student_email: params[:student_email],
			student_full_name: params[:student_full_name],
			student_high_school: params[:student_high_school],
			student_mobile_number: params[:student_mobile_number]
		)
		render nothing: true
	end

end
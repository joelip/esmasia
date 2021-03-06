class EnrollmentController < ApplicationController

	def payment_page
		Rails.logger.info "Cost cookie is still here and it is #{cookies[:esm_session_price]}"
	end

	def create_enrollment
		enrollment = Enrollment.create!(
			additional_address_info:params[:additional_address_info],
			grade: 									params[:grade],
			dob: 										params[:dob],
			home_address: 					params[:home_address],
			parent_email: 					params[:parent_email],
			parent_full_name: 			params[:parent_full_name],
			student_email: 					params[:student_email],
			student_full_name: 			params[:student_full_name],
			student_high_school: 		params[:student_high_school],
			student_mobile_number: 	params[:student_mobile_number],
			course_type: 						params[:course_type],
			course_date: 						params[:course_date],
			course_venue: 					params[:course_venue]
		)
		if enrollment
			c = cookies
			params[:course_date] == "Aug. 20 to Sept. 10" ? c[:esm_session_price] = 59900 : c[:esm_session_price] = 79900
			Rails.logger.info "ESM Session Price is #{c[:esm_session_price]}"
			EnrollmentMailer.registration_success(enrollment).deliver
			AdminMailer.registered_student(enrollment).deliver
		end
		render nothing: true
	end

end
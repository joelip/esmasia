class EnrollmentMailer < ActionMailer::Base
  default from: "info@esmcollege.com"

  def registration_success(enrollment)
  	@enrollment = enrollment

  	mail to: enrollment.parent_email, subject: "ESM ACT Crash Course: Successful Registration"
  end

  def payment_receipt(email)
  	mail to: email, subject: "ESM ACT Crash Course: Payment Receipt"
  end

end

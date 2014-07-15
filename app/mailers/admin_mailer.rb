class AdminMailer < ActionMailer::Base
  default from: "jlipper@esmcollege.com"

  def registered_student(enrollment)
  	@enrollment = enrollment

  	mail to: 'downing.billy@gmail.com', subject: "#{@enrollment.student_full_name} has just enrolled with ESM's ACT Course"
  end

  def successful_payment(email, referred_by)
    @referred_by = referred_by
  	@email = email

  	mail to: 'downing.billy@gmail.com', subject: "Successful payment by #{@email}"
  end
end

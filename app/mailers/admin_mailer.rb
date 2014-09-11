class AdminMailer < ActionMailer::Base
  default from: "jlipper@esmcollege.com"

  def registered_student(enrollment)
  	@enrollment = enrollment

  	mail to: 'kpope@esmcollege.com', subject: "#{@enrollment.student_full_name} has just enrolled in a course"
  end
  
end

class Enrollment < ActiveRecord::Base
  attr_accessible :city, :dob, :grade, :home_address, :parent_email, :parent_full_name,
  :state, :student_email, :student_full_name, :student_high_school, :student_mobile_number
end

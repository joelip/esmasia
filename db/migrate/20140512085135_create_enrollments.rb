class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :student_full_name
      t.string :student_high_school
      t.string :dob
      t.string :grade
      t.string :student_mobile_number
      t.string :student_email
      t.string :parent_full_name
      t.string :parent_email
      t.string :home_address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end

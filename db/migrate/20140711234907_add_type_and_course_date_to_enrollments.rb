class AddTypeAndCourseDateToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :course_date, :string
    add_column :enrollments, :course_type, :string
  end
end

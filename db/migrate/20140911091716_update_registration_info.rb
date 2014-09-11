class UpdateRegistrationInfo < ActiveRecord::Migration
  def up
    remove_column :enrollments, :city
    add_column    :enrollments, :additional_address_info, :string
    add_column    :enrollments, :course_venue, :string
  end

  def down
    add_column       :enrollments, :city, :string
    remove_column    :enrollments, :additional_address_info
    remove_column    :enrollments, :course_venue
  end
end

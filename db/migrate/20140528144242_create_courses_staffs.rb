class CreateCoursesStaffs < ActiveRecord::Migration
  def change
    create_table :courses_staffs do |t|
      t.integer :course_id
      t.integer :staff_id

      t.timestamps
    end
  end
end

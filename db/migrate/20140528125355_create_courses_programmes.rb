class CreateCoursesProgrammes < ActiveRecord::Migration
  def change
    create_table :courses_programmes do |t|
      t.integer :course_id
      t.integer :programme_id

      t.timestamps
    end
  end
end

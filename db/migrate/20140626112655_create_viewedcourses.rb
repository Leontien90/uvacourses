class CreateViewedcourses < ActiveRecord::Migration
  def change
    create_table :viewedcourses do |t|
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end

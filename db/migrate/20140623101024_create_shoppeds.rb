class CreateShoppeds < ActiveRecord::Migration
  def change
    create_table :shoppeds do |t|
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end

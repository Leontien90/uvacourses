class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :courses_users do |t|
      t.integer :user_id
      t.integer :course_id

      # t.timestamps
    end
    # add_index :relationships, :user_id
   #  add_index :relationships, :course_id
   #  add_index :relationships, [:user_id, :course_id], unique: true
  end
end

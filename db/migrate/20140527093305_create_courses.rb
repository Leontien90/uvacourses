class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :ects
      t.string :year
      t.string :period
      t.string :institute
      t.text :description
      t.text :goals
      t.string :participation_count
      t.string :examination

      t.timestamps
    end
  end
end

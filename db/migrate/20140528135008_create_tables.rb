class CreateTables < ActiveRecord::Migration
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
    
    create_table :programmes do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
    
    create_table :staffs do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
    
    create_table :courses_programmes do |t|
      t.integer :course_id
      t.integer :programme_id

      t.timestamps
    end
  end
end

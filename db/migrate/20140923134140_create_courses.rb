class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.integer :minimum_age
      t.integer :maximum_age

      t.timestamps
    end
  end
end

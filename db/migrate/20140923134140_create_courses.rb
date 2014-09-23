class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string  :name
      t.string  :description
      t.integer :minimum_age
      t.integer :maximum_age
      t.boolean :age_range_firm
      t.integer :minimum_student_count
      t.integer :maximum_student_count
      t.string  :room_requirements
      t.string  :time_requirements
      t.string  :drop_ins_allowed

      t.timestamps
    end
  end
end

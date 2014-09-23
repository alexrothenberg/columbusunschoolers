class CreateCourseChildren < ActiveRecord::Migration
  def change
    create_table :course_children do |t|
      t.references :course
      t.references :child

      t.timestamps
    end
  end
end

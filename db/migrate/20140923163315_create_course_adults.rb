class CreateCourseAdults < ActiveRecord::Migration
  def change
    create_table :course_adults do |t|
      t.references :course
      t.references :adult
      t.string    :role

      t.timestamps
    end
  end
end

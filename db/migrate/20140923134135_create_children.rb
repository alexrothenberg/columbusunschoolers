class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string     :first_name
      t.string     :last_name
      t.date       :birthday
      t.boolean    :always_with_parent
      t.references :family

      t.timestamps
    end
  end
end

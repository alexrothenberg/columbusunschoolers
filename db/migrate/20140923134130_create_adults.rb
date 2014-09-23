class CreateAdults < ActiveRecord::Migration
  def change
    create_table :adults do |t|
      t.string     :first_name
      t.string     :last_name
      t.string     :email
      t.string     :phone
      t.string     :address
      t.boolean    :text_messagable
      t.boolean    :irregular_attendance
      t.references :family

      t.timestamps
    end
  end
end

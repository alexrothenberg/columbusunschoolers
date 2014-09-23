class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :address

      t.timestamps
    end
  end
end

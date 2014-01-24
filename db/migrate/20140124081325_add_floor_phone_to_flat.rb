class AddFloorPhoneToFlat < ActiveRecord::Migration
  def change
    change_table :flats do |t|
      t.integer :floor
      t.boolean :phone
    end
  end
end

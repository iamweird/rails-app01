class AddOwnerTvToFlat < ActiveRecord::Migration
  def change
    change_table :flats do |t|
      t.boolean :with_owner
      t.boolean :cable_tv
    end
  end
end

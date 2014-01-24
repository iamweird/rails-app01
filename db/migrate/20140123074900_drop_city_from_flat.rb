class DropCityFromFlat < ActiveRecord::Migration
  def up
    remove_column :flats, :city_id
  end

  def down
    change_table :flats do |t|
      t.belongs_to :city
    end
  end
end

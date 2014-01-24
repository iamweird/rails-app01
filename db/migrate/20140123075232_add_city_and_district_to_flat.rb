class AddCityAndDistrictToFlat < ActiveRecord::Migration
  def change
    change_table :flats do |t|
      t.references :district, index: true
      t.references :city, index: true
    end
  end
end

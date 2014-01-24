class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, limit: 255
      t.timestamps
    end

    change_table :flats do |t|
      t.belongs_to :city
    end
  end
end

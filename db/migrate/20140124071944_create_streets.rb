class CreateStreets < ActiveRecord::Migration
  def change
    create_table :streets do |t|
      t.string :name
      t.references :city, index: true
      t.references :district, index: true

      t.timestamps
    end

    change_table :flats do |t|
      t.references :street, index: true
    end
  end
end

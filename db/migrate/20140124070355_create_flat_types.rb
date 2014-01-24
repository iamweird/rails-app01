class CreateFlatTypes < ActiveRecord::Migration
  def change
    create_table :flat_types do |t|
      t.string :name, limit: 255
      
      t.timestamps
    end

    change_table :flats do |t|
      t.references :flat_type, index: true
      t.integer :rooms
    end
  end
end

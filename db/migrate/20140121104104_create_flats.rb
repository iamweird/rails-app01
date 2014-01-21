class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.decimal :lon
      t.decimal :lat

      t.timestamps
    end
  end
end

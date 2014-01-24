class CreateInternetTypes < ActiveRecord::Migration
  def change
    create_table :internet_types do |t|
      t.string :name

      t.timestamps
    end

    change_table :flats do |t|
      t.references :internet_type, index: true
      t.decimal :internet_speed_mbs, precision: 7, scale: 1
    end
  end
end

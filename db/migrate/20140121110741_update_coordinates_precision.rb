class UpdateCoordinatesPrecision < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :flats do |t|
        dir.up do
          t.change :lon, :decimal, precision: 18, scale: 14
          t.change :lat, :decimal, precision: 18, scale: 14
        end
        dir.down do
          t.change :lon, :decimal, precision: 10, scale: 0
          t.change :lat, :decimal, precision: 10, scale: 0
        end
      end
    end
  end
end

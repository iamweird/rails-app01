class AddFacilitiesToFlat < ActiveRecord::Migration
  def change
    change_table :flats do |t|
      t.string :facilities,
               :default => {
                  bathroom: 0,
                  bath: 0,
                  wc: 0,
                  hot_water: 0,
                  heating: 0,
                  renovated: false,
                  plastic_windows: false,
                  false_ceiling: false,
                  warm_floor: false
                }.to_yaml
    end
  end
end

class AddNonreferenceFieldsFlat < ActiveRecord::Migration
  def change
    add_column :flats, :area, :decimal, precision: 7, scale: 1
    add_column :flats, :people, :integer
    add_column :flats, :neighbours, :integer, default: 0
    add_column :flats, :house, :string, limit: 255
    add_column :flats, :flat, :string, limit: 255
    add_column :flats, :pubutil_included, :boolean
  end
end

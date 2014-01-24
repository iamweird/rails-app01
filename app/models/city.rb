class City < ActiveRecord::Base
  has_many :flats
  has_many :districts
end

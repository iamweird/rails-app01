class Flat < ActiveRecord::Base
  acts_as_mappable  :default_units => :kms,
                    :lng_column_name => :lon
  belongs_to :city
  belongs_to :district
  belongs_to :street
  belongs_to :flat_type
  belongs_to :internet_type
end

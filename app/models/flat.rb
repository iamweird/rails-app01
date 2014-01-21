class Flat < ActiveRecord::Base
  acts_as_mappable  :default_units => :kms,
                    :lng_column_name => :lon
end

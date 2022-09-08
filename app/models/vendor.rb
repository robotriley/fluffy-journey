class Vendor < ApplicationRecord
  has_many :sweets, through: :vendor_sweet
end

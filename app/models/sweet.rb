class Sweet < ApplicationRecord
  has_many :vendors, through: :vendor_sweet
end

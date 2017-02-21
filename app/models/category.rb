class Category < ApplicationRecord
  has_many :styles
  validates :name, uniqueness:true
end

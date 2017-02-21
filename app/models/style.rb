class Style < ApplicationRecord
  belongs_to :category
  has_many :recipies
  validates :name, uniqueness:true
end

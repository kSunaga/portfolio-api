class Product < ApplicationRecord
  has_many :languages, through: :product_languages
  has_many :product_languages

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
end

class Product < ApplicationRecord
  has_many :languages, through: :product_languages
  has_many :product_languages
end

class Language < ApplicationRecord
  has_many products, through: :product_languages
  has_many product_languages
end

class ProductLanguage < ApplicationRecord
  belongs_to :language
  belongs_to :product
end

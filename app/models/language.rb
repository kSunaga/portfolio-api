class Language < ApplicationRecord
  has_many :products, through: :product_languages
  has_many :product_languages

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :color, presence: true

  scope :search_skill_id, -> (skill_id) { where(skill_id: skill_id)}
end

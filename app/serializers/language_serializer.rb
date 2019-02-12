class LanguageSerializer < ActiveModel::Serializer
  attributes :name, :description, :first_experience, :skill_id, :color

  has_many :product_languages

  class ProductLanguageSerializer < ActiveModel::Serializer
    attributes :product_id

    def product_id
      object.product.id
    end
  end
end
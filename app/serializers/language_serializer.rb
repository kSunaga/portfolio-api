class LanguageSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :first_experience, :skill_id, :color

  has_many :product_languages

  class ProductLanguageSerializer < ActiveModel::Serializer
    attributes :product_id, :title

    def product_id
      object.product.id
    end

    def title
      object.product.title
    end
  end
end

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :url, :image_url, :body

  has_many :product_languages

  class ProductLanguageSerializer < ActiveModel::Serializer
    attributes :language_id, :name, :color

    def langugage_id
      object.language.id
    end

    def name
      object.language.name
    end

    def color
      object.language.color
    end
  end
end



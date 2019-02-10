class CreateProductLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :product_languages do |t|
      t.references :language, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end

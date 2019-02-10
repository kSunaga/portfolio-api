class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, presence: true
      t.string :body, presence: true
      t.string :description, presence: true
      t.string :image_url

      t.timestamps
    end
  end
end

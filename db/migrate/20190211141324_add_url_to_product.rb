class AddUrlToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :url, :string, after: :description
  end
end

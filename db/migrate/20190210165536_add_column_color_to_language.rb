class AddColumnColorToLanguage < ActiveRecord::Migration[5.2]
  def change
    add_column :languages, :color, :string, after: :skill_id
  end
end

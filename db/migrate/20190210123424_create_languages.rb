class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.string :name, presence: true
      t.string :description, presence: true
      t.date :first_experience, presence: true

      t.timestamps
    end
  end
end

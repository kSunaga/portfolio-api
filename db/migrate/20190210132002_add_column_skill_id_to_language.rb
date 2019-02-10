class AddColumnSkillIdToLanguage < ActiveRecord::Migration[5.2]
  def change
    add_column :languages, :skill_id, :integer, after: :first_experience
  end
end

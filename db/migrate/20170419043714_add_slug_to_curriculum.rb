class AddSlugToCurriculum < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculums, :slug, :string
    add_index :curriculums, :slug, unique: true
  end
end

class AddStuffToCurriculum < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculums, :grade, :string
    add_column :curriculums, :subject, :string
  end
end

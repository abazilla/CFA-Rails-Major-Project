class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :location
      t.string :grade_low
      t.string :grade_high
      t.references :user, foreign_key: true
      t.string :curriculum_list, array: true, default: []
      t.string :teacher_list, array: true, default: []

      t.timestamps
    end
  end
end

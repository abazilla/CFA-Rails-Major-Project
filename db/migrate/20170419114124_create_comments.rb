class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :curriculum, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end

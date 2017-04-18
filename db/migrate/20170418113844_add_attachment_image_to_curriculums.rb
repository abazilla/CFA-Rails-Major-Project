class AddAttachmentImageToCurriculums < ActiveRecord::Migration
  def self.up
    change_table :curriculums do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :curriculums, :image
  end
end

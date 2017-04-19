class AddAttachmentDocumentToCurriculums < ActiveRecord::Migration
  def self.up
    change_table :curriculums do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :curriculums, :document
  end
end

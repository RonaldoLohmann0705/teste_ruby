class AddAttachmentFileToArchives < ActiveRecord::Migration
  def self.up
    change_table :archives do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :archives, :file
  end
end

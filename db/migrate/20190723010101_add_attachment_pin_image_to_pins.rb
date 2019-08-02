class AddAttachmentPinImageToPins < ActiveRecord::Migration[5.2]
  def self.up
    change_table :pins do |t|
      t.attachment :pin_image
    end
  end

  def self.down
    remove_attachment :pins, :pin_image
  end
end

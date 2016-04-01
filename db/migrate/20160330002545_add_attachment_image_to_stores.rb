class AddAttachmentImageToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.attachment :image
      t.attachment :image2
      t.attachment :image3
      t.attachment :image4


    end
  end

  def self.down
    remove_attachment :stores, :image, :image2, :image3, :image4

  end
end

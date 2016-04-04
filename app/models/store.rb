class Store < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :user_id, :image,:image2, :image3, :image4,  presence: true

  searchable do
    text :caption
    end


has_attached_file :image, styles: { :medium => "640x" }
validates_attachment_content_type :image, :content_type =>
/\Aimage\/.*\Z/

has_attached_file :image2, styles: { :medium => "640x" }
validates_attachment_content_type :image2, :content_type =>
/\Aimage\/.*\Z/

has_attached_file :image3, styles: { :medium => "640x" }
validates_attachment_content_type :image3, :content_type =>
/\Aimage\/.*\Z/

has_attached_file :image4, styles: { :medium => "640x" }
validates_attachment_content_type :image4, :content_type =>
/\Aimage\/.*\Z/

end

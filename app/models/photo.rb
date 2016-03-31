class Photo < ActiveRecord::Base
  has_attached_file :download,
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

                    validates_attachment_content_type :download, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def s3_credentials
    {:bucket => "popstar", :aws_access_key_id => ENV["AWS_ACCESS_KEY_ID"], :aws_secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"]}
  end
end

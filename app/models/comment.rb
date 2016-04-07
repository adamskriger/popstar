class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :store

  validates :content, presence: true
end

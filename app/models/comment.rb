class Comment < ActiveRecord::Base
  belongs_to :article
  
  validates :commenter, presence: true
  validates :body, presence: true
  validates :score, presence: true
end

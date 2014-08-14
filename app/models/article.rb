class Article < ActiveRecord::Base
  
  validates :title, presence: true, length: { maximum: 25 }
  validates :text, presence: true
  validates :link, presence: true
  
  has_many :comments, dependent: :destroy
  belongs_to :user
end

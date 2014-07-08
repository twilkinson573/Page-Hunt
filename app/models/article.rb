class Article < ActiveRecord::Base
  
  validates :title, presence: true, length: { maximum: 20 }
  validates :text, presence: true
  
  has_many :comments, dependent: :destroy
  belongs_to :user
end

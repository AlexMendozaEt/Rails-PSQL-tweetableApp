class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :tweets, dependent: :nullify

  def like_count
    likes.count
  end
  
  validates :body, length: { maximum: 140 }
end

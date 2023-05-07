class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :replied_to, class_name: "Tweet", optional: true

  has_many :likes, dependent: :destroy
  has_many :replies, class_name: "Tweet", foreign_key: :replied_to_id, dependent: :nullify


  def like_count
    likes.count
  end

  validates :body, length: { maximum: 140 }
end

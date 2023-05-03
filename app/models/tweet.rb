class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  validates :body, length: { maximum: 140 }
end

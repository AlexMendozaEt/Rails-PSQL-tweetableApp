class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :tweets, dependent: :nullify

  validates :body, length: { maximum: 140 }
end

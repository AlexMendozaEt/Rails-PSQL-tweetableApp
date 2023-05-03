class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar

  validates :email, presence: true, format: {
    with: /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i,
    message: "only email format"
  }

  validates :username, presence: true, uniqueness: true

  validates :name, presence: true

  validates :password, length: { minimum: 6 }
end

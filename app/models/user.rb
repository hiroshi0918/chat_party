class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :age, :gender ,presence: true
  has_many :hobby_users, dependent: :destroy
  has_many :hobbies, through: :hobby_users
  has_many :messages
  accepts_nested_attributes_for :hobby_users, allow_destroy: true
end

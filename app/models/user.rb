class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable, :lockable, :timeoutable
  validates :name, presence:true
  has_many :permissions
  has_many :roles, through: :permissions

  has_many :user_business
  has_many :businesses, through: :user_business
end

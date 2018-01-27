class User < ApplicationRecord
  has_many :quests
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

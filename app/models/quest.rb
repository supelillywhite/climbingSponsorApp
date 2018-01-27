class Quest < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :description, :user_id
end

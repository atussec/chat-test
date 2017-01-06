class Chatroom < ApplicationRecord
  belongs_to :user
  has_many :messages
  accepts_nested_attributes_for :messages
  validates_associated :messages
end

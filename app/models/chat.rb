class Chat < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :users, through: :messages, inverse_of: :chats
  # has_and_belongs_to_many :users
end

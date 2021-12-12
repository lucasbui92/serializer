class User < ApplicationRecord
  has_many :messages
  has_many :chats, through: :messages, inverse_of: :users
  # has_and_belongs_to_many :chats
end

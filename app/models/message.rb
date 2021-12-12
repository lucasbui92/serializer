class Message < ApplicationRecord
  belongs_to :chat, inverse_of: :messages
  belongs_to :user, inverse_of: :messages
end

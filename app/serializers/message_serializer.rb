class MessageSerializer < ActiveModel::Serializer
  attributes :id, :text, :chat_id

  belongs_to :user
end

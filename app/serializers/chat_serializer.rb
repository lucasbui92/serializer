class ChatSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :messages

  # def messages
  #   object.messages
  # end
end

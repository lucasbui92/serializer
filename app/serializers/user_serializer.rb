require 'date'

class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  # attribute :tutorial_complete?, if: :recently_joined?

  has_many :chats
  # has_many :messages

  def recently_joined?
    Date.today.prev_month < object.created_at
  end
end

class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :event_desctiption, :event_type, :event_type_id
  has_one :user_login
end

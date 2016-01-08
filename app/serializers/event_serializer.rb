class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :event_desctiption, :event_type
end

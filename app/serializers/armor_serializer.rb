class ArmorSerializer
  include JSONAPI::Serializer

  attributes :name, :asg, :weight, :enchant, :created_at, :updated_at, :properties
end

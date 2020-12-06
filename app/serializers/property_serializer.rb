class PropertySerializer
  include JSONAPI::Serializer

  attributes :slot, :kind, :effect, :amount
end

class ArmorSerializer
  include JSONAPI::Serializer

  attributes :name, :asg, :weight, :enchant, :ensorcell

  attribute :critical_services, if: Proc.new { |record| record.critical_services.present? }
  attribute :damage_services,   if: Proc.new { |record| record.damage_services.present? }

  attributes :properties, :created_at, :updated_at
end

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :id_category, :name, :price, :description
end

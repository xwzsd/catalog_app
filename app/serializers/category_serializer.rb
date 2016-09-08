class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :alias
  has_many :items
end

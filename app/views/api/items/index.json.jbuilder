node :totalCount do
  @items.total_count
end

child @items => :results do
  collection @items

  attributes :id, :id_category, :name, :price, :description, :created_at, :updated_at
end
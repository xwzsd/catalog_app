node :totalCount do
  @categories.total_count
end

child @categories => :results do
  collection @categories

  attributes :id, :name, :alias, :created_at, :updated_at
end

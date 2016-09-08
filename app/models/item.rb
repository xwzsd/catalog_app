class Item < ActiveRecord::Base
	belongs_to :category

	validates :name, uniqueness: true, presence: true

	default_scope { order(completed_at: :desc) }
end

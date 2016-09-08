class Category < ActiveRecord::Base
	has_many :items, dependet: :destroy

	validates :name, uniqueness: true, presence: true
end

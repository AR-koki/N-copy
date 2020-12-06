class Movie < ApplicationRecord
	belongs_to :admin, optional: true
	has_many :items, dependent: :destroy
	belongs_to :category, optional: true
	belongs_to :genre, optional: true
	has_many :my_lists, dependent: :destroy
	attachment :image

	def my_list_by?(user)
		my_lists.where(user_id: user.id).exists?
	end
end

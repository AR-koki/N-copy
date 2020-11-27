class Movie < ApplicationRecord
	has_many :items, dependent: :destroy
	belongs_to :category, optional: true
	attachment :image
end

class Movie < ApplicationRecord
	belongs_to :admin, optional: true
	has_many :items, dependent: :destroy
	belongs_to :category, optional: true
	belongs_to :genre, optional: true
	has_many :movies, dependent: :destroy
	attachment :image
end

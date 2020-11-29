class Movie < ApplicationRecord
	has_many :items, dependent: :destroy
	belongs_to :category, optional: true
	belongs_to :genre, optinal: :true
	attachment :image
end

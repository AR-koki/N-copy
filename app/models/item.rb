class Item < ApplicationRecord
	belongs_to :movie, optional: true
end

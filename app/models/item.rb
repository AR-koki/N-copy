class Item < ApplicationRecord
	belongs_to :movie, optional: true
	belongs_to :admin, optional: true
end

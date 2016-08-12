class Category < ApplicationRecord
	has_many :has_categories
	has_many :ads, through: :has_categories
end

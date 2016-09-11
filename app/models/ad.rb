# == Schema Information
#
# Table name: ads
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  brand       :string
#  price       :integer
#  visit_count :integer
#  region      :string
#  city        :string
#  cellphone   :string
#  phone       :string
#  adress      :string
#  state       :string
#  status      :string
#  type        :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Ad < ApplicationRecord
	belongs_to :user
	has_many :has_categories
	has_many :categories, through: :has_categories
	before_save :set_visit_count
	after_create :save_categories

	def categories=(value)
		#Custom setter
		@categories = value
	end

	def update_visits_count
		self.update(visit_count: self.visit_count + 1)
	end

	private
	def save_categories
		@categories.each do |category_id|
		HasCategory.create(category_id: category_id, ad_id: self.id)
		end
	end

	def set_visit_count
		self.visit_count ||= 0
	end
end

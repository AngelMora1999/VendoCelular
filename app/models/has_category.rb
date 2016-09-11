# == Schema Information
#
# Table name: has_categories
#
#  id          :integer          not null, primary key
#  ad_id       :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class HasCategory < ApplicationRecord
  belongs_to :ad
  belongs_to :category
end

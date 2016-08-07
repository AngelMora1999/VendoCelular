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
#  status      :string
#  type        :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AdTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

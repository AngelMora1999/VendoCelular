class HasCategory < ApplicationRecord
  belongs_to :ad
  belongs_to :category
end

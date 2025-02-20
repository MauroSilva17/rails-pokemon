class Pokemon < ApplicationRecord
  has_many :pokeball
  has_one_attached :photo
end

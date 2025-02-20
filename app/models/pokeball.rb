class Pokeball < ApplicationRecord
  belongs_to :Trainer
  belongs_to :Pokemon
end

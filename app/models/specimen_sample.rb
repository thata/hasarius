class SpecimenSample < ApplicationRecord
  belongs_to :indivisual
  has_many :genes
end

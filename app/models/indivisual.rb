class Indivisual < ApplicationRecord
  belongs_to :organism
  has_many :silk_samples
  has_many :specimen_samples
end

class SilkSample < ApplicationRecord
  belongs_to :indivisual
  has_many :mechanical_properties
end

class Organism < ApplicationRecord
  has_many :indivisuals

  def self.advanced_search(conditions)
    relation = joins(:indivisuals).
               joins("left outer join silk_samples on indivisuals.id = silk_samples.indivisual_id").
               joins("left join specimen_samples on indivisuals.id = specimen_samples.indivisual_id").
               joins("inner join mechanical_properties on silk_samples.id = mechanical_properties.silk_sample_id").
               joins("inner join genes on specimen_samples.id = genes.specimen_sample_id").
               distinct.
               order("organisms.id ASC")
    if conditions
      conditions.each do |cond|
        if cond
          relation = relation.where(cond)
        end
      end
    end
    relation
  end
end

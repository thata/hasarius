class MechanicalProperty < ApplicationRecord
  belongs_to :silk_sample

  def self.advanced_search(conditions)
    relation = joins(:silk_sample).
               joins("inner join indivisuals on indivisuals.id = silk_samples.indivisual_id").
               joins("inner join organisms on organisms.id = indivisuals.organism_id").
               joins("left outer join specimen_samples on indivisuals.id = specimen_samples.indivisual_id").
               joins("inner join genes on specimen_samples.id = mechanical_properties.silk_sample_id").
               distinct.
               order("mechanical_properties.id ASC")
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

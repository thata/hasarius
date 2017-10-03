class Gene < ApplicationRecord
  belongs_to :specimen_sample

  def self.advanced_search(conditions)
    relation = joins(:specimen_sample).
               joins("inner join indivisuals on indivisuals.id = specimen_samples.indivisual_id").
               joins("inner join organisms on organisms.id = indivisuals.organism_id").
               joins("left outer join silk_samples on indivisuals.id = silk_samples.indivisual_id").
               joins("inner join mechanical_properties on silk_samples.id = mechanical_properties.silk_sample_id").
               distinct.
               order("genes.id ASC")
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

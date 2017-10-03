class CreateSpecimenSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :specimen_samples do |t|
      t.references :indivisual, foreign_key: true
      t.string :specimen_type
      t.string :paper
      t.string :institution

      t.timestamps
    end
  end
end

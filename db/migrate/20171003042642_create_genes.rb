class CreateGenes < ActiveRecord::Migration[5.1]
  def change
    create_table :genes do |t|
      t.references :specimen_sample, foreign_key: true
      t.string :gene_name
      t.text :dna_sequence
      t.string :protein_name
      t.text :amino_acid_sequence

      t.timestamps
    end
  end
end

json.extract! gene, :id, :specimen_sample_id, :gene_name, :dna_sequence, :protein_name, :amino_acid_sequence, :created_at, :updated_at
json.url gene_url(gene, format: :json)

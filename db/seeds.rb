# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

beginning = Date.new(2017, 1, 1)
countries = ["Japan", "America", "South Africa"]
for i in 1..100
  tax_id = Random.rand(10000)
  type_of_web = ["orb", "tangle", "funnel"][Random.rand(3)]
  org = Organism.create(species: "Species#{i}", tax_id: i, type_of_web: type_of_web)
  for j in 1..5
    date = beginning + Random.rand(90)
    country = countries[Random.rand(3)]
    size = Random.rand(20)
    idv = org.indivisuals.create(sex: "male", sampling_date: date, country: country, size: size)
    pmid = Random.rand(10000)
    institution = ["Riken", "Keio", "Spiber"][Random.rand(3)]
    silk_sample = idv.silk_samples.create(silk_type: "dragline", paper: "PMID:#{pmid}", institution: institution)
    toughness = Random.rand(100)
    sd = Random.rand(100)
    silk_sample.mechanical_properties.create(toughness: toughness, toughness_sd: sd)
    pmid = Random.rand(10000)
    institution = ["Riken", "Keio", "Spiber"][Random.rand(3)]
    specimen_sample = idv.specimen_samples.create(specimen_type: "whole", paper: "PMID:#{pmid}", institution: institution)
    specimen_sample.genes.create(gene_name: "gene#{i + j}", dna_sequence: "atcgatcg", protein_name: "Protein#{i + j}", amino_acid_sequence: "MVGSLNCIVAVSQNMGIGKN")
  end
end


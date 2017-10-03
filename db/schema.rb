# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171003042644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genes", force: :cascade do |t|
    t.bigint "specimen_sample_id"
    t.string "gene_name"
    t.text "dna_sequence"
    t.string "protein_name"
    t.text "amino_acid_sequence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specimen_sample_id"], name: "index_genes_on_specimen_sample_id"
  end

  create_table "indivisuals", force: :cascade do |t|
    t.bigint "organism_id"
    t.string "sex"
    t.date "sampling_date"
    t.string "country"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organism_id"], name: "index_indivisuals_on_organism_id"
  end

  create_table "mechanical_properties", force: :cascade do |t|
    t.bigint "silk_sample_id"
    t.float "toughness"
    t.float "toughness_sd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["silk_sample_id"], name: "index_mechanical_properties_on_silk_sample_id"
  end

  create_table "organisms", force: :cascade do |t|
    t.string "species"
    t.integer "tax_id"
    t.string "type_of_web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "silk_samples", force: :cascade do |t|
    t.bigint "indivisual_id"
    t.string "silk_type"
    t.string "paper"
    t.string "institution"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["indivisual_id"], name: "index_silk_samples_on_indivisual_id"
  end

  create_table "specimen_samples", force: :cascade do |t|
    t.bigint "indivisual_id"
    t.string "specimen_type"
    t.string "paper"
    t.string "institution"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["indivisual_id"], name: "index_specimen_samples_on_indivisual_id"
  end

  add_foreign_key "genes", "specimen_samples"
  add_foreign_key "indivisuals", "organisms"
  add_foreign_key "mechanical_properties", "silk_samples"
  add_foreign_key "silk_samples", "indivisuals"
  add_foreign_key "specimen_samples", "indivisuals"
end

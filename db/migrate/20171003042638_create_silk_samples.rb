class CreateSilkSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :silk_samples do |t|
      t.references :indivisual, foreign_key: true
      t.string :silk_type
      t.string :paper
      t.string :institution

      t.timestamps
    end
  end
end

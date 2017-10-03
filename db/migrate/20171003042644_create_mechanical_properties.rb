class CreateMechanicalProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :mechanical_properties do |t|
      t.references :silk_sample, foreign_key: true
      t.float :toughness
      t.float :toughness_sd

      t.timestamps
    end
  end
end

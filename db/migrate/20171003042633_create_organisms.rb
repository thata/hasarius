class CreateOrganisms < ActiveRecord::Migration[5.1]
  def change
    create_table :organisms do |t|
      t.string :species
      t.integer :tax_id
      t.string :type_of_web

      t.timestamps
    end
  end
end

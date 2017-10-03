class CreateIndivisuals < ActiveRecord::Migration[5.1]
  def change
    create_table :indivisuals do |t|
      t.references :organism, foreign_key: true
      t.string :sex
      t.date :sampling_date
      t.string :country
      t.integer :size

      t.timestamps
    end
  end
end

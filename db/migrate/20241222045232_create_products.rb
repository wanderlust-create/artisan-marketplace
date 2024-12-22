class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :stock
      t.references :artisan, null: false, foreign_key: true
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end

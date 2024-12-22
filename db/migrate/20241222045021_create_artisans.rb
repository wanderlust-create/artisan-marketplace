class CreateArtisans < ActiveRecord::Migration[7.0]
  def change
    create_table :artisans do |t|
      t.string :store_name
      t.string :email
      t.string :password_digest
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end

class AddAdminToArtisans < ActiveRecord::Migration[7.0]
  def change
    add_reference :artisans, :admin, foreign_key: true
  end
end


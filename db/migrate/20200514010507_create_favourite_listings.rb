class CreateFavouriteListings < ActiveRecord::Migration[5.2]
  def change
    create_table :favourite_listings do |t|
      t.references :user, foreign_key: true
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end

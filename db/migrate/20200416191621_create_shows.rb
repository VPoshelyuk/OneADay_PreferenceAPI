class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :tmdb_id
      t.string :poster_path
      t.string :backdrop_path
      t.string :overview
      t.string :first_air_date
      t.integer :genre_ids, array: true

      t.timestamps
    end
    add_index :shows, :genre_ids, using: 'gin'
  end
end

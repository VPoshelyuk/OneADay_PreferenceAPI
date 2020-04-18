class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :tmdb_id
      t.string :poster_path
      t.string :backdrop_path
      t.string :overview
      t.string :release_date
      t.integer :genre_ids, array: true

      t.timestamps
    end
    add_index :movies, :genre_ids, using: 'gin'
  end
end

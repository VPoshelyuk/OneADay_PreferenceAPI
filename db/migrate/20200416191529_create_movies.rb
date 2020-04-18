class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :tmdb_id
      t.string :poster_path
      t.string :background_path
      t.string :overview
      t.string :release_date

      t.timestamps
    end
  end
end

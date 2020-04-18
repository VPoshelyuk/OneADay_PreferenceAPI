class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :tmdb_id
      t.string :poster_path
      t.string :background_path
      t.string :overview
      t.string :first_air_date

      t.timestamps
    end
  end
end

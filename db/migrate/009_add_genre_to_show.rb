class AddGenreToShows < ActiveRecord::Migration
  def change
    add_column :shows
  end
end
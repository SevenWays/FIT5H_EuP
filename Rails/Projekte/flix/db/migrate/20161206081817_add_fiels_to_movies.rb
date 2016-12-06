class AddFielsToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :description, :text
    add_column :movies, :released_on, :datetime
  end
end

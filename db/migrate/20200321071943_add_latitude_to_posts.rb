class AddLatitudeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :latitude, :decimal, :precision => 7, :scale => 5
  end
end

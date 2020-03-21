class AddLongitudeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :longitude, :decimal, :precision => 8, :scale => 5
  end
end

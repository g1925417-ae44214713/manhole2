class AddLatToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :lat, :decimal
  end
end

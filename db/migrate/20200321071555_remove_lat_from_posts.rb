class RemoveLatFromPosts < ActiveRecord::Migration[6.0]
  def change

    remove_column :posts, :lat, :decimal
  end
end

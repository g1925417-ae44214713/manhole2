class RemoveLngFromPosts < ActiveRecord::Migration[6.0]
  def change

    remove_column :posts, :lng, :decimal
  end
end

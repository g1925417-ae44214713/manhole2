class AddLngToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :lng, :decimal
  end
end

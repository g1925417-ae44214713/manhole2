class AdddateToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :date, :date, after: :place
  end
end

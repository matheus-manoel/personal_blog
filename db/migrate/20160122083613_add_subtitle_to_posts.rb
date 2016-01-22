class AddSubtitleToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :subtitle, :string
  end
end

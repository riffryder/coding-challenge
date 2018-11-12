class ChangePostsIdColumnForComments < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :posts_id, :post_id
  end
end

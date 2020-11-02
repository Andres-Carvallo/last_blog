class ChangePostsTagsTable < ActiveRecord::Migration[5.2]
  def change
    rename_table 'posts_tags', 'post_tags'
    add_column :post_tags, :id, :primary_key
    add_column :post_tags, :available, :boolean, default: true
  end
end

class FixCommentFkColumns < ActiveRecord::Migration
  def change
    rename_column :comments, :users_id, :user_id
    rename_column :comments, :posts_id, :post_id
  end
end

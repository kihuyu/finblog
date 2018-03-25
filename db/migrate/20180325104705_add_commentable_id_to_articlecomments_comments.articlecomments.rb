# This migration comes from articlecomments (originally 20180325104656)
class AddCommentableIdToArticlecommentsComments < ActiveRecord::Migration[5.1]
  def change
    add_column :articlecomments_comments, :commentable_id, :integer
  end
end

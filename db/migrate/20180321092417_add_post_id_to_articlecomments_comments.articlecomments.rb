# This migration comes from articlecomments (originally 20180321092315)
class AddPostIdToArticlecommentsComments < ActiveRecord::Migration[5.1]
  def change
    add_column :articlecomments_comments, :post_id, :integer
  end
end

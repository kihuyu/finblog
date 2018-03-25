# This migration comes from articlecomments (originally 20180324174314)
class AddCommentedArticleIdToArticlecommentsComments < ActiveRecord::Migration[5.1]
  def change
    add_column :articlecomments_comments, :commented_article_id, :integer
  end
end

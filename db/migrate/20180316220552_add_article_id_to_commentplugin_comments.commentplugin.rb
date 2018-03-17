# This migration comes from commentplugin (originally 20180316220445)
class AddArticleIdToCommentpluginComments < ActiveRecord::Migration[5.1]
  def change
    add_column :commentplugin_comments, :article_id, :integer
  end
end

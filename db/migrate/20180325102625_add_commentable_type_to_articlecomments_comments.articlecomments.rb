# This migration comes from articlecomments (originally 20180325102215)
class AddCommentableTypeToArticlecommentsComments < ActiveRecord::Migration[5.1]
  def change
    add_column :articlecomments_comments, :commenteable_type, :string
  end
end

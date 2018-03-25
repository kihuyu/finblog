# This migration comes from articlecomments (originally 20180325102250)
class AddHasChildrenToArticlecommentsComments < ActiveRecord::Migration[5.1]
  def change
    add_column :articlecomments_comments, :has_children, :boolean
  end
end

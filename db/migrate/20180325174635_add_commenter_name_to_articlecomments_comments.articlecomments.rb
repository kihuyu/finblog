# This migration comes from articlecomments (originally 20180325174613)
class AddCommenterNameToArticlecommentsComments < ActiveRecord::Migration[5.1]
  def change
    add_column :articlecomments_comments, :commenter_name, :string
  end
end

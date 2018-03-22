# This migration comes from articlecomments (originally 20180321092240)
class AddCommenterIdToArticlecommentsComments < ActiveRecord::Migration[5.1]
  def change
    add_column :articlecomments_comments, :commenter_id, :integer
  end
end

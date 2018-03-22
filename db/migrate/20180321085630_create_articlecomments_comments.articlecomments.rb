# This migration comes from articlecomments (originally 20180321085337)
class CreateArticlecommentsComments < ActiveRecord::Migration[5.1]
  def change
    create_table :articlecomments_comments do |t|
      t.text :text

      t.timestamps
    end
  end
end

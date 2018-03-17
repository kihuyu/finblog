# This migration comes from commentengine (originally 20180316003715)
class CreateCommentengineComments < ActiveRecord::Migration[5.1]
  def change
    create_table :commentengine_comments do |t|
      t.text :text
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end
  end
end

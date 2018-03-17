# This migration comes from commentplugin (originally 20180316214924)
class CreateCommentpluginComments < ActiveRecord::Migration[5.1]
  def change
    create_table :commentplugin_comments do |t|
      t.text :text

      t.timestamps
    end
  end
end

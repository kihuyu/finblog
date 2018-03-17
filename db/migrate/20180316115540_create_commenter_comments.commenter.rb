# This migration comes from commenter (originally 20180316114902)
class CreateCommenterComments < ActiveRecord::Migration[5.1]
  def change
    create_table :commenter_comments do |t|
      t.text :text

      t.timestamps
    end
  end
end

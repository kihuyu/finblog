# This migration comes from commentstest (originally 20180321070032)
class CreateCommentstestThreads < ActiveRecord::Migration[5.1]
  def change
    create_table :commentstest_threads do |t|
      t.text :text

      t.timestamps
    end
  end
end

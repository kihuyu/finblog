# This migration comes from commentstest (originally 20180321072321)
class AddCommenterIdToCommentstestThreads < ActiveRecord::Migration[5.1]
  def change
    add_column :commentstest_threads, :commenter_id, :integer
  end
end

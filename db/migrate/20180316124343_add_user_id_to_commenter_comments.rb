class AddUserIdToCommenterComments < ActiveRecord::Migration[5.1]
  def change
    add_column :commenter_comments, :user_id, :integer
  end
end

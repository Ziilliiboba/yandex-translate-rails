class RemoveHistoryIdFromUsers < ActiveRecord::Migration
  def change
    remove_column(:users, :history_id)
  end
end

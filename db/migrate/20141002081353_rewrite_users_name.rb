class RewriteUsersName < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.rename :name, :login
  	end
  end
end

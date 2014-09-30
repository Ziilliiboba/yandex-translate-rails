class AddForeignKey2 < ActiveRecord::Migration
  def change
  	change_table :histories do |t|
  		t.references :user
  	end
  end
end

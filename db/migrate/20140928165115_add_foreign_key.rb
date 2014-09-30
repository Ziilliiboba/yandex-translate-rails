class AddForeignKey < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.references :history
  	end
  end
end

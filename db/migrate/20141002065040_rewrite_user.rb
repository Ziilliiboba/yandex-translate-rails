class RewriteUser < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.rename :password, :crypted_password
  		t.string    :password_salt,       :null => false,  :default => 1              # optional, but highly recommended
		t.string    :persistence_token,   :null => false,  :default => 1              # required
		t.string    :single_access_token, :null => false,  :default => 1              # optional, see Authlogic::Session::Params
		t.string    :perishable_token,    :null => false,  :default => 1             # optional, see Authlogic::Session::Perishability
  	end
  end
end

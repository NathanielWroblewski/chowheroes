class Users < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :email
  		t.string :password_digest
  		t.integer :reputation
  		t.string :phone
  		t.string :street
  		t.string :city
  		t.string :state
  		t.string :zip
  		t.float :lat
  		t.float :long
  		t.string :image_url
  		t.timestamps
  	end
  end
end

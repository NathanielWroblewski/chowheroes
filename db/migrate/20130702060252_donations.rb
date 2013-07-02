class Donations < ActiveRecord::Migration
  def change
  	create_table :donations do |t|
  		t.references :user
  		t.string :description
  		t.string :hours
  	end
  end
end

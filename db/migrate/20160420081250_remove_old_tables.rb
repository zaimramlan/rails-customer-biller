class RemoveOldTables < ActiveRecord::Migration
  def up
  	Customer.all.each do |c|
  		Account.create(name: c.name, about: c.about, email: c.email)
  	end

  	Employee.all.each do |e|
  		Account.create(name: e.name, email: e.email)
  	end

  	drop_table :employees
  	drop_table :customers
  end

  def down
  end
end

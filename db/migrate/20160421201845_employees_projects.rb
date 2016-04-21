class EmployeesProjects < ActiveRecord::Migration
  def change
  	create_table :employee_projects do |t|
  		t.belongs_to :employee, :project
  		t.timestamps
  	end
  end
end

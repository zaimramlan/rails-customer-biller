class Project < ActiveRecord::Base
	belongs_to :customer
	has_and_belongs_to_many :employees, :join_table => "employee_projects"
end
